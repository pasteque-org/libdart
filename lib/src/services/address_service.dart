import 'package:archethic_lib_dart/src/services/api_service.dart';
import 'package:archethic_lib_dart/src/utils/crypto.dart'
    as crypto
    show deriveAddress;
import 'package:archethic_lib_dart/src/utils/utils.dart';

/// Service to manage and retrieve address-related information from the Archethic network.
class AddressService {
  /// Creates an [AddressService] instance.
  ///
  /// Requires an [endpoint] which is the HTTP URL to an Archethic node.
  AddressService(this.endpoint);

  /// The HTTP URL to a Archethic node (acting as welcome node)
  String? endpoint;

  /// Retrieves the last known address for a given [seed].
  ///
  /// This involves deriving the genesis address from the [seed] and then
  /// querying the network for the latest address associated with that genesis address.
  Future<String> lastAddressFromSeed(final String seed) async {
    final genesisAddress = crypto.deriveAddress(seed, 0);
    final lastAddressMap = await lastAddressFromAddress([genesisAddress]);

    return lastAddressMap[genesisAddress] ?? '';
  }

  /// Retrieves the last known addresses for a list of [addresses].
  ///
  /// Queries the network for the last transaction associated with each address in the list
  /// and extracts the latest address from those transactions.
  Future<Map<String, String>> lastAddressFromAddress(
    final List<String> addresses,
  ) async {
    if (addresses.isEmpty) {
      return {};
    }

    final transactionMap = await ApiService(
      endpoint!,
    ).getLastTransaction(addresses, request: ' address ');

    final lastAddressMap = <String, String>{};
    transactionMap.forEach((final key, final value) {
      lastAddressMap[key] = value.address!.address!;
    });

    return removeAliasPrefix<String>(lastAddressMap) ?? {};
  }
}
