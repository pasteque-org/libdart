import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:archethic_lib_dart/src/model/address.dart';
import 'package:archethic_lib_dart/src/model/authorized_key.dart';
import 'package:archethic_lib_dart/src/model/balance.dart';
import 'package:archethic_lib_dart/src/model/blockchain_version.dart';
import 'package:archethic_lib_dart/src/model/exception/archethic_exception.dart';
import 'package:archethic_lib_dart/src/model/keychain.dart';
import 'package:archethic_lib_dart/src/model/node.dart';
import 'package:archethic_lib_dart/src/model/ownership.dart';
import 'package:archethic_lib_dart/src/model/response/genesis_address_response.dart';
import 'package:archethic_lib_dart/src/model/response/network_transactions_response.dart';
import 'package:archethic_lib_dart/src/model/response/nodes_response.dart';
import 'package:archethic_lib_dart/src/model/response/origin_key_response.dart';
import 'package:archethic_lib_dart/src/model/shared_secrets.dart';
import 'package:archethic_lib_dart/src/model/smart_contracts/sc_call_function_request.dart';
import 'package:archethic_lib_dart/src/model/token.dart';
import 'package:archethic_lib_dart/src/model/transaction.dart';
import 'package:archethic_lib_dart/src/model/transaction_fee.dart';
import 'package:archethic_lib_dart/src/model/transaction_input.dart';
import 'package:archethic_lib_dart/src/model/transaction_status.dart';
import 'package:archethic_lib_dart/src/model/unspent_outputs.dart';
import 'package:archethic_lib_dart/src/services/graph_ql_client_logger.dart';
import 'package:archethic_lib_dart/src/utils/collection_utils.dart';
import 'package:archethic_lib_dart/src/utils/crypto.dart';
import 'package:archethic_lib_dart/src/utils/json_rpc_util.dart';
import 'package:archethic_lib_dart/src/utils/utils.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// A service class for interacting with the Archethic API.
///
/// This class provides methods to interact with the Archethic blockchain,
/// including querying tokens, managing exceptions, and handling retries.
class ApiService with JsonRPCUtil {
  /// Creates an instance of [ApiService].
  ///
  /// - [endpoint]: The HTTP URL to an Archethic node.
  /// - [maxRetries]: The maximum number of retries for failed requests.
  ///   Defaults to `5`.
  /// - [retryDelay]: A function that calculates the delay between retries.
  ///   Defaults to [_defaultRetryDelay].
  ApiService(
    this.endpoint, {
    this.maxRetries = 5,
    this.retryDelay = _defaultRetryDelay,
  }) : _client = GraphQLClient(
         link: HttpLink('$endpoint/api'),
         cache: GraphQLCache(),
         queryRequestTimeout: const Duration(seconds: 30),
         defaultPolicies: DefaultPolicies(
           query: Policies(fetch: FetchPolicy.noCache, error: ErrorPolicy.all),
         ),
       );

  /// The maximum number of retries for failed requests.
  final int maxRetries;

  /// A function that calculates the delay between retries.
  ///
  /// The function takes the current retry count as input and returns a [Duration].
  final Duration Function(int retryCount) retryDelay;

  /// Default retry delay computation function.
  ///
  /// The delay increases exponentially with each retry:
  /// - 1st retry: ~2 seconds
  /// - 2nd retry: ~5 seconds
  /// - 3rd retry: ~10 seconds
  /// - etc.
  ///
  /// The formula used is: `(3 * pow(retryCount, 1.5)).round()`.
  static Duration _defaultRetryDelay(final int retryCount) {
    final delayInSeconds = (3 * pow(retryCount, 1.5)).round();
    return Duration(seconds: delayInSeconds);
  }

  /// Default HTTP headers for JSON RPC requests.
  static const kRequestHeaders = <String, String>{
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  static const _responseKeysToIgnore = ['__typename'];

  final _logger = Logger('ApiService');

  final GraphQLClient _client;

  /// HTTP URL to a Archethic node (acting as welcome node)
  final String endpoint;

  /// Send a transaction to the network
  Future<TransactionStatus> sendTx(final Transaction transaction) async {
    final completer = Completer<TransactionStatus>();

    var transactionStatus = const TransactionStatus();

    try {
      final jsonRPCRequest = setJsonRPCRequest('send_transaction', {
        'transaction': jsonDecode(transaction.toNodeRPC()),
      });

      _logger.fine(
        'sendTx: (${transaction.address}) requestHttp.body=$jsonRPCRequest',
      );

      final responseHttp = await http.post(
        Uri.parse('$endpoint/api/rpc'),
        body: jsonRPCRequest,
        headers: kRequestHeaders,
      );
      _logger.fine(
        'sendTx: (${transaction.address}) responseHttp.body=${responseHttp.body}',
      );

      final result = getJsonRPCResult(responseHttp.body);
      transactionStatus = transactionStatusFromJson(json.encode(result));

      completer.complete(transactionStatus);
    } catch (e, stack) {
      _logger.severe('sendTx: (${transaction.address}) failed', e, stack);
      rethrow;
    }

    return completer.future;
  }

  /// Query the network to find the last transaction from a list of addresses
  Future<Map<String, Transaction>> getLastTransaction(
    final List<String> addresses, {
    final String request = Transaction.kTransactionQueryAllFields,
  }) {
    const methodName = 'getLastTransaction';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on Transaction { $request }';
        final body = StringBuffer()..write('query { ');
        for (final address in addresses) {
          body.write(
            ' _$address: lastTransaction(address:"$address") { ...fields }',
          );
        }
        body.write(' } $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final data) {
                  final transactions = data.mapValues((final value) {
                    if (value != null) {
                      return Transaction.fromNodeRPC(
                        value as Map<String, dynamic>,
                      );
                    }
                  }, keysToIgnore: _responseKeysToIgnore);
                  return removeAliasPrefix(transactions) ?? {};
                },
              ),
            );

        manageLinkException(result);

        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Fetches the chain length (index) of the last transaction for each given address.
  ///
  /// Returns a map where keys are addresses and values are their corresponding
  /// last transaction indices. If an address has no transactions, its index will be 0.
  /// Returns an empty map if the input [addresses] list is empty.
  Future<Map<String, int>> getTransactionIndex(
    final List<String> addresses,
  ) async {
    if (addresses.isEmpty) {
      return {};
    }

    final lastTransactionMap = await getLastTransaction(
      addresses,
      request: 'chainLength',
    );

    final lastTransactionIndexMap = <String, int>{};
    lastTransactionMap.forEach((final key, final value) {
      lastTransactionIndexMap[key] = value.chainLength ?? 0;
    });

    return removeAliasPrefix<int>(lastTransactionIndexMap) ?? {};
  }

  /// Retrieves the storage nonce public key from the network.
  ///
  /// This key is typically used in cryptographic operations related to storage.
  /// Returns an empty string if the key is not found or an error occurs.
  Future<String> getStorageNoncePublicKey() {
    const methodName = 'getStorageNoncePublicKey';
    return withRetry(
      actionName: methodName,
      action: () async {
        const body = 'query {sharedSecrets {storageNoncePublicKey}}';
        _logger.fine('getStorageNoncePublicKey: requestHttp.body=$body');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body),
                parserFn: SharedSecrets.fromJson,
              ),
            );

        manageLinkException(result);
        return result.parsedData!.storageNoncePublicKey ?? '';
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to find a balance from a list of addresses
  Future<Map<String, Balance>> fetchBalance(
    final List<String> addresses, {
    final String request = Transaction.kBalanceQueryAllFields,
  }) {
    const methodName = 'fetchBalance';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on Balance { $request }';
        final body = StringBuffer()..write('query { ');
        for (final address in addresses) {
          body.write(' _$address: balance(address:"$address") { ...fields }');
        }
        body.write(' } $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final object) {
                  final balances = object.mapValues((final value) {
                    if (value != null) {
                      return Balance.fromJson(value as Map<String, dynamic>);
                    }
                  }, keysToIgnore: _responseKeysToIgnore);
                  return removeAliasPrefix(balances) ?? {};
                },
              ),
            );
        manageLinkException(result);

        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to find a transaction from a list of addresses
  Future<Map<String, String>> getTransactionContent(
    final List<String> addresses,
  ) async {
    if (addresses.isEmpty) {
      return {};
    }

    try {
      final transactionChainMap = await getTransaction(
        addresses,
        request: 'data { content }',
      );

      final contentMap = <String, String>{};

      transactionChainMap.forEach((final key, final transaction) {
        final content = transaction.data?.content;
        if (content != null) {
          contentMap[key] = content;
        }
      });

      return removeAliasPrefix<String>(contentMap) ?? {};
    } catch (e, stack) {
      _logger.severe('getTransactionContent failed', e, stack);
      rethrow;
    }
  }

  /// Query the network to find transaction chains from a map of addresses and pagingAddress
  ///
  /// Returns the content scalar type represents transaction content [List<Transaction>]. Depending if the content can displayed it will be rendered as plain text otherwise in hexadecimal
  Future<Map<String, List<Transaction>>> getTransactionChain(
    final Map<String, String> addresses, {
    final String request = Transaction.kTransactionQueryAllFields,
    final bool orderAsc = true,
    final int? fromCriteria,
  }) {
    const methodName = 'getTransactionChain';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final order = orderAsc ? 'ASC ' : 'DESC';

        final fragment = 'fragment fields on Transaction { $request }';
        final body = StringBuffer()..write('query { ');
        // TODO(reddwarf03): Not good the '_' system to define alias but address format is not accepted by graphQL
        addresses.forEach((final key, final value) {
          body
            ..write(' _$key: transactionChain(address:"$key" ')
            ..write(' order: $order ');
          if (value.isNotEmpty) {
            body.write(' pagingAddress:"$value"');
          }
          if (fromCriteria != null) {
            body.write(' from:$fromCriteria');
          }

          body.write(') { ...fields }');
        });
        body.write('} $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final object) {
                  final transactions = object.mapValues(
                    (final transactions) =>
                        (transactions as List<dynamic>)
                            .map(
                              (final transaction) => Transaction.fromNodeRPC(
                                transaction as Map<String, dynamic>,
                              ),
                            )
                            .toList(),
                    keysToIgnore: _responseKeysToIgnore,
                  );
                  return removeAliasPrefix<List<Transaction>>(transactions) ??
                      {};
                },
              ),
            );

        manageLinkException(result);

        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the node infos
  ///
  /// Returns a [List<Node>] with infos
  Future<List<Node>> getNodeList() {
    const methodName = 'getNodeList';
    return withRetry(
      actionName: methodName,
      action: () async {
        const body =
            'query {nodes {authorized available averageAvailability firstPublicKey geoPatch ip lastPublicKey networkPatch port rewardAddress authorizationDate enrollmentDate}}';

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body),
                parserFn:
                    (final json) => NodesResponseData.fromJson(json).nodes!,
              ),
            );
        manageLinkException(result);

        return result.parsedData ?? [];
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to list the transaction on the type.
  ///
  /// - [type] : The type of transaction
  /// - [page] : The page
  /// - [request] : List of informations to retrieve in the GraphQL Query
  ///
  /// Returns the content scalar type represents transaction content [List<Transaction>]. Depending if the content can displayed it will be rendered as plain text otherwise in hexadecimal
  Future<List<Transaction>> networkTransactions(
    final String type,
    final int page, {
    final String request = Transaction.kTransactionQueryAllFields,
  }) {
    const methodName = 'networkTransactions';
    return withRetry(
      actionName: methodName,
      action: () async {
        final body =
            'query { networkTransactions(type: "$type", page: $page) { $request } }';

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body),
                parserFn: (final json) {
                  return TransactionsResponseData.fromJson(
                    json,
                  ).networkTransactions!;
                },
              ),
            );
        manageLinkException(result);

        return result.parsedData ?? [];
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to list the transaction inputs from a list of addresses
  Future<Map<String, List<TransactionInput>>> getTransactionInputs(
    final List<String> addresses, {
    final String request = Transaction.kTransactionInputQueryAllFields,
    final int limit = 0,
    final int pagingOffset = 0,
  }) {
    const methodName = 'getTransactionInputs';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on TransactionInput { $request }';
        final body = StringBuffer()..write('query { ');
        for (final address in addresses) {
          body.write(' _$address: transactionInputs(address:"$address" ');
          if (limit > 0) {
            body.write(' limit:$limit ');
          }
          if (pagingOffset > 0) {
            body.write(' pagingOffset:$pagingOffset ');
          }
          body.write('  ) { ...fields } ');
        }
        body.write(' } $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final json) {
                  final transactionInputs = json.mapValues(
                    (final transactionInputs) =>
                        (transactionInputs as List<dynamic>)
                            .map(
                              (final transactionInput) =>
                                  TransactionInput.fromJson(
                                    transactionInput as Map<String, dynamic>,
                                  ),
                            )
                            .toList(),
                    keysToIgnore: _responseKeysToIgnore,
                  );
                  return removeAliasPrefix<List<TransactionInput>>(
                        transactionInputs,
                      ) ??
                      {};
                },
              ),
            );

        manageLinkException(result);
        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to find a transaction.
  ///
  /// Returns all informations represent transaction content.
  Future<Map<String, Transaction>> getTransaction(
    final List<String> addresses, {
    final String request = Transaction.kTransactionQueryAllFields,
  }) {
    const methodName = 'getTransaction';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on Transaction { $request }';
        final body = StringBuffer()..write('query { ');
        for (final address in addresses) {
          body.write(
            ' _$address: transaction(address:"$address") { ...fields }',
          );
        }
        body.write('} $fragment');
        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final json) {
                  final transactions = json.mapValues((final value) {
                    if (value != null) {
                      return Transaction.fromNodeRPC(
                        value as Map<String, dynamic>,
                      );
                    }
                  }, keysToIgnore: _responseKeysToIgnore);
                  return removeAliasPrefix<Transaction>(transactions) ?? {};
                },
              ),
            );

        manageLinkException(result);

        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Get transaction fees
  Future<TransactionFee> getTransactionFee(
    final Transaction transaction,
  ) async {
    final jsonRPCRequest = setJsonRPCRequest('estimate_transaction_fee', {
      'transaction': jsonDecode(transaction.toNodeRPC()),
    });

    _logger.fine('getTransactionFee: requestHttp.body=$jsonRPCRequest');

    final responseHttp = await http.post(
      Uri.parse('$endpoint/api/rpc'),
      body: jsonRPCRequest,
      headers: kRequestHeaders,
    );
    _logger.fine('getTransactionFee: responseHttp.body=${responseHttp.body}');
    final result = getJsonRPCResult(responseHttp.body);

    return TransactionFee.fromJson(result);
  }

  /// getTransactionOwnerships
  Future<Map<String, List<Ownership>>> getTransactionOwnerships(
    final List<String> addresses,
  ) async {
    if (addresses.isEmpty) {
      return {};
    }

    try {
      final transactionMap = await getTransaction(
        addresses,
        request:
            'data { ownerships { secret, authorizedPublicKeys { encryptedSecretKey, publicKey } } }',
      );

      final ownershipsMap = <String, List<Ownership>>{};

      transactionMap.forEach((final key, final value) {
        if (value.data != null) {
          ownershipsMap[key] = value.data!.ownerships;
        }
      });

      return removeAliasPrefix<List<Ownership>>(ownershipsMap) ?? {};
    } catch (e, stack) {
      _logger.severe('getTransactionOwnerships failed', e, stack);
    }

    return {};
  }

  /// Create a new keychain and build a transaction
  /// - [seed] : Keychain's seed
  /// - [authorizedPublicKeys] : Authorized public keys able to decrypt the keychain
  /// - [originPrivateKey] : Origin private key to attest the transaction
  /// - [blockchainTxVersion]: The blockchain transaction version to be used.
  /// - [servicesMap]: (Optional) A map where:
  ///     - Keys are service names (as `String`),
  ///     - Values are derivation paths (as `String`) associated with the respective services.
  ///     If provided, the keychain will include these services with their respective derivation paths.
  ///
  Transaction newKeychainTransaction(
    final String seed,
    final List<String> authorizedPublicKeys,
    final Uint8List originPrivateKey,
    final int blockchainTxVersion, {
    final Map<String, String>? servicesMap,
  }) {
    var keychain = Keychain(seed: hexToUint8List(seed));
    if (servicesMap!.isNotEmpty) {
      servicesMap.forEach((final serviceName, final derivationPath) {
        keychain = keychain.copyWithService(serviceName, derivationPath);
      });
    }

    final aesKey = uint8ListToHex(
      Uint8List.fromList(
        List<int>.generate(32, (final i) => Random.secure().nextInt(256)),
      ),
    );

    final authorizedKeys = List<AuthorizedKey>.empty(growable: true);
    for (final key in authorizedPublicKeys) {
      authorizedKeys.add(
        AuthorizedKey(
          encryptedSecretKey: uint8ListToHex(ecEncrypt(aesKey, key)),
          publicKey: key,
        ),
      );
    }

    return Transaction(
          type: 'keychain',
          version: blockchainTxVersion,
          data: Transaction.initData(),
        )
        .setContent(jsonEncode(keychain.toDID()))
        .addOwnership(
          uint8ListToHex(aesEncrypt(keychain.encode(), aesKey)),
          authorizedKeys,
        )
        .build(seed, 0)
        .transaction
        .originSign(uint8ListToHex(originPrivateKey));
  }

  /// Create a new access keychain and build a transaction
  ///
  /// - [seed] : Access keychain's seed
  /// - [keychainAddress] : Keychain's transaction address
  /// - [originPrivateKey] : Origin private key to attest the transaction
  Transaction newAccessKeychainTransaction(
    final String seed,
    final Uint8List keychainAddress,
    final Uint8List originPrivateKey,
    final int blockchainTxVersion,
  ) {
    final aesKey = uint8ListToHex(
      Uint8List.fromList(
        List<int>.generate(32, (final i) => Random.secure().nextInt(256)),
      ),
    );

    final keypair = deriveKeyPair(seed, 0);

    final encryptedSecretKey = ecEncrypt(aesKey, keypair.publicKey);

    final authorizedKeys = <AuthorizedKey>[
      AuthorizedKey(
        publicKey: uint8ListToHex(Uint8List.fromList(keypair.publicKey!)),
        encryptedSecretKey: uint8ListToHex(encryptedSecretKey),
      ),
    ];

    return Transaction(
          type: 'keychain_access',
          version: blockchainTxVersion,
          data: Transaction.initData(),
        )
        .addOwnership(
          uint8ListToHex(aesEncrypt(keychainAddress, aesKey)),
          authorizedKeys,
        )
        .build(seed, 0)
        .transaction
        .originSign(uint8ListToHex(originPrivateKey));
  }

  /// Retrieve a keychain by using keychain access seed
  Future<Keychain> getKeychain(final String seed) async {
    final keypair = deriveKeyPair(seed, 0);
    final accessKeychainAddress = deriveAddress(seed, 1);

    try {
      final ownershipsMap = await getTransactionOwnerships([
        accessKeychainAddress,
      ]);
      if (ownershipsMap[accessKeychainAddress] == null ||
          ownershipsMap[accessKeychainAddress]!.isEmpty) {
        throw ArchethicKeychainNotExistsException;
      }

      final ownership = ownershipsMap[accessKeychainAddress]![0];
      final authorizedPublicKey = ownership.authorizedPublicKeys.firstWhere(
        (final authKey) =>
            authKey.publicKey!.toUpperCase() ==
            uint8ListToHex(
              Uint8List.fromList(keypair.publicKey!),
            ).toUpperCase(),
      );

      final aesKey = ecDecrypt(
        authorizedPublicKey.encryptedSecretKey,
        keypair.privateKey,
      );
      final keychainAddress = aesDecrypt(ownership.secret, aesKey);
      _logger.fine(
        'keychainAddress (getKeychain): ${uint8ListToHex(keychainAddress)}',
      );

      final lastTransactionKeychainMap = await getLastTransaction([
        uint8ListToHex(keychainAddress),
      ], request: 'address');

      final ownerships2Map = await getTransactionOwnerships([
        lastTransactionKeychainMap[uint8ListToHex(keychainAddress)]!
            .address!
            .address!,
      ]);
      final ownership2 =
          ownerships2Map[lastTransactionKeychainMap[uint8ListToHex(
                keychainAddress,
              )]!
              .address!
              .address!]![0];

      final authorizedPublicKey2 = ownership2.authorizedPublicKeys.firstWhere(
        (final publicKey) =>
            publicKey.publicKey!.toUpperCase() ==
            uint8ListToHex(
              Uint8List.fromList(keypair.publicKey!),
            ).toUpperCase(),
      );
      final aesKey2 = ecDecrypt(
        authorizedPublicKey2.encryptedSecretKey,
        keypair.privateKey,
      );
      final keychain = aesDecrypt(ownership2.secret, aesKey2);
      return decodeKeychain(keychain);
    } catch (e, stack) {
      _logger.severe('getkeychain failed', e, stack);

      if (e == ArchethicKeychainNotExistsException) {
        rethrow;
      } else {
        throw ArchethicConnectionException(e.toString());
      }
    }
  }

  /// Retrieves the predefined origin private key.
  ///
  /// **Note:** This method currently returns a constant value `kOriginPrivateKey`.
  /// Consider security implications if this key is sensitive and globally accessible.
  String getOriginKey() {
    return kOriginPrivateKey;
  }

  /// Add a new origin key
  ///
  /// - [originPublicKey] : origin public key to be added
  /// - [certificate] : certificate of the origin public key
  Future<String> addOriginKey({
    final String? originPublicKey,
    final String? certificate,
  }) async {
    final jsonRPCRequest = {
      'jsonrpc': '2.0',
      'method': 'add_origin_key',
      'params': <String, String>{
        'origin_public_key': originPublicKey!,
        'certificate': certificate!,
      },
      'id': 1,
    };

    _logger.fine(
      'addOriginKey: requestHttp.body=${json.encode(jsonRPCRequest)}',
    );

    final responseHttp = await http.post(
      Uri.parse('$endpoint/api/rpc'),
      body: json.encode(jsonRPCRequest),
      headers: kRequestHeaders,
    );

    _logger.fine('addOriginKey: responseHttp.body=${responseHttp.body}');

    final result = getJsonRPCResult(responseHttp.body);

    return originKeyResponseFromJson(json.encode(result)).toString();
  }

  /// Query the network to find a token's data from a list of token addresses
  Future<Map<String, Token>> getToken(
    final List<String> addresses, {
    final String request =
        'genesis, name, id, supply, symbol, type, properties, decimals, collection, ownerships { authorizedPublicKeys { encryptedSecretKey,  publicKey }, secret }',
  }) {
    const methodName = 'getToken';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (addresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on Token { $request }';
        final body = StringBuffer()..write('query { ');
        for (final address in addresses) {
          body.write(' _$address: token(address:"$address") { ...fields }');
        }
        body.write(' } $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final json) {
                  final tokens = json.mapValues((final value) {
                    if (value != null) {
                      return Token.fromJson(value as Map<String, dynamic>);
                    }
                  }, keysToIgnore: _responseKeysToIgnore);
                  return removeAliasPrefix<Token>(tokens) ?? {};
                },
              ),
            );
        manageLinkException(result);

        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to find the genesis address of a transaction
  Future<Address> getGenesisAddress(final String address) {
    const methodName = 'getGenesisAddress';
    return withRetry(
      actionName: methodName,
      action: () async {
        final body = 'query { genesisAddress (address:"$address") }';

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body),
                parserFn:
                    (final json) =>
                        GenesisAddressResponseData.fromJson(json).address,
              ),
            );
        manageLinkException(result);
        return result.parsedData ?? const Address(address: '');
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Call a smart contract's function
  Future<List<dynamic>> callSCFunctionMulti({
    required final List<SCCallFunctionRequest> jsonRPCRequests,
  }) async {
    final completer = Completer<List<dynamic>>();
    try {
      _logger.fine(
        'callSCFunction: requestHttp.body=${json.encode(jsonRPCRequests)}',
      );

      final responseHttp = await http.post(
        Uri.parse('$endpoint/api/rpc'),
        body: json.encode(jsonRPCRequests),
        headers: kRequestHeaders,
      );

      _logger.fine('callSCFunction: responseHttp.body=${responseHttp.body}');

      if (responseHttp.statusCode == 200) {
        final jsonResponse = json.decode(responseHttp.body);
        if (jsonResponse is List) {
          completer.complete(jsonResponse);
        } else {
          // 20240327 - Nodes don't send [] when requests have just an element...
          if (jsonResponse is Map && jsonRPCRequests.length == 1) {
            completer.complete([jsonResponse]);
          } else {
            throw const ArchethicInvalidResponseException(
              'callSCFunction: jsonResponse is not a list',
            );
          }
        }
      }
    } catch (e, stack) {
      _logger.severe('callSCFunction failed', e, stack);
      rethrow;
    }
    return completer.future;
  }

  /// Call a smart contract's function.
  ///
  /// [resultMap] controls the response format (true=Map, false=String).
  Future<Object> callSCFunction({
    required final SCCallFunctionRequest jsonRPCRequest,
    final bool resultMap = false,
  }) async {
    final completer = Completer<Object>();
    try {
      _logger.fine(
        'callSCFunction: requestHttp.body=${json.encode(jsonRPCRequest)}',
      );

      final responseHttp = await http.post(
        Uri.parse('$endpoint/api/rpc'),
        body: json.encode(jsonRPCRequest),
        headers: kRequestHeaders,
      );

      _logger.fine('callSCFunction: responseHttp.body=${responseHttp.body}');

      if (responseHttp.statusCode == 200) {
        if (resultMap) {
          completer.complete(getJsonRPCResult(responseHttp.body));
        } else {
          completer.complete(getJsonRPCResultString(responseHttp.body));
        }
      }
    } catch (e, stack) {
      _logger.severe('callSCFunction failed', e, stack);
      rethrow;
    }
    return completer.future;
  }

  /// Query the network to find the protocol, transaction and code versions
  Future<BlockchainVersionModel> getBlockchainVersion() {
    const methodName = 'getBlockchainVersion';
    return withRetry(
      actionName: methodName,
      action: () async {
        const body = 'query { version {code protocol transaction} }';

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body),
                parserFn: BlockchainVersionModel.fromJson,
              ),
            );

        manageLinkException(result);

        return result.parsedData ??
            const BlockchainVersionModel(
              version: BlockchainVersion(protocol: '', transaction: ''),
            );
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Query the network to retrieve the unspent output of a chain (address should be the genesis address of the chain)
  Future<Map<String, List<UnspentOutputs>>> chainUnspentOutputs(
    final List<String> genesisAddresses, {
    final String request = Transaction.kUnspentOutputQueryFieldsWithoutState,
    final int limit = 0,
    // pagingOffset should be a Sha256Hash
    final String pagingOffset = '',
  }) {
    const methodName = 'chainUnspentOutputs';
    return withRetry(
      actionName: methodName,
      action: () async {
        if (genesisAddresses.isEmpty) {
          return {};
        }

        final fragment = 'fragment fields on UnspentOutput { $request }';
        final body = StringBuffer()..write('query { ');
        for (final genesisAddress in genesisAddresses) {
          body.write(
            ' _$genesisAddress: chainUnspentOutputs(address:"$genesisAddress" ',
          );
          if (limit > 0) {
            body.write(' limit:$limit ');
          }
          if (pagingOffset.isNotEmpty) {
            body.write(' pagingOffset:$pagingOffset ');
          }
          body.write('  ) { ...fields } ');
        }
        body.write(' } $fragment');

        final result = await _client
            .withLogger(methodName)
            .query(
              QueryOptions(
                document: gql(body.toString()),
                parserFn: (final json) {
                  final unspentOutputs = json.mapValues(
                    (final unspentOutputs) =>
                        (unspentOutputs as List<dynamic>)
                            .map(
                              (final unspentOutput) => UnspentOutputs.fromJson(
                                unspentOutput as Map<String, dynamic>,
                              ),
                            )
                            .toList(),
                    keysToIgnore: _responseKeysToIgnore,
                  );
                  return removeAliasPrefix<List<UnspentOutputs>>(
                        unspentOutputs,
                      ) ??
                      {};
                },
              ),
            );
        manageLinkException(result);
        return result.parsedData ?? {};
      },
      maxRetries: maxRetries,
      retryDelay: retryDelay,
    );
  }

  /// Handles exceptions from a [QueryResult].
  ///
  /// This method checks the exception in the [QueryResult] and throws an appropriate
  /// exception based on the type of error:
  /// - If the exception is a [TimeoutException], it rethrows it.
  /// - If the exception is an [HttpLinkParserException] with status code `429`or `503`,
  ///   it throws an [ArchethicTooManyRequestsException].
  /// - For other exceptions, it throws an [ArchethicConnectionException].
  ///
  /// - [result]: The [QueryResult] to check for exceptions.
  void manageLinkException(final QueryResult result) {
    final exception = result.exception?.linkException;
    if (exception == null) {
      return;
    }

    if (exception is UnknownException) {
      if (exception.originalException is TimeoutException) {
        throw TimeoutException(exception.message);
      }
    }

    if (exception is HttpLinkParserException) {
      if (exception.response.statusCode == 429) {
        throw const ArchethicTooManyRequestsException();
      }

      if (exception.response.statusCode == 503) {
        throw const ArchethicServiceUnavailableException();
      }
    }

    throw ArchethicConnectionException(exception.toString());
  }

  /// Executes an action with retry logic.
  ///
  /// This method attempts to execute the provided [action] and retries if it fails
  /// with an [ArchethicTooManyRequestsException]. The delay between retries is
  /// calculated using the [retryDelay] function.
  ///
  /// - [action]: The asynchronous function to execute.
  /// - [maxRetries]: The maximum number of retries. Defaults to `5`.
  /// - [retryDelay]: A function that calculates the delay between retries.
  ///   Defaults to [_defaultRetryDelay].
  ///
  /// Returns the result of the [action] if successful.
  ///
  /// Throws:
  /// - The original exception if it is not an [ArchethicTooManyRequestsException].
  /// - An [Exception] with the message "Max retries exceeded" if the maximum number
  ///   of retries is reached.
  Future<T> withRetry<T>({
    required final Future<T> Function() action,
    required final String actionName,
    final int maxRetries = 5,
    final Duration Function(int retryCount) retryDelay = _defaultRetryDelay,
  }) async {
    var retryCount = 0;

    while (retryCount < maxRetries) {
      try {
        return await action();
      } catch (e) {
        if (e is ArchethicTooManyRequestsException ||
            e is ArchethicServiceUnavailableException) {
          retryCount++;
          if (retryCount >= maxRetries) {
            _logger.severe('Max retries reached for action: $actionName');
            rethrow;
          }

          final delay = retryDelay(retryCount);

          _logger.warning(
            'Retrying action "$actionName" in $delay (attempt $retryCount/$maxRetries)',
          );
          await Future.delayed(delay);
        } else {
          rethrow;
        }
      }
    }

    throw Exception('Max retries exceeded for action: $actionName');
  }
}
