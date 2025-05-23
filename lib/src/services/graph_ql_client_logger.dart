import 'dart:convert';

import 'package:gql/language.dart' show printNode;
import 'package:graphql/client.dart';
import 'package:logging/logging.dart';

/// Extends [GraphQLClient] with logging capabilities.
///
/// This extension provides a convenient way to wrap an existing [GraphQLClient]
/// instance with a [GraphQLClientLogger], which logs GraphQL requests and responses.
extension GraphQLClientWithLogger on GraphQLClient {
  /// Wraps the current [GraphQLClient] instance with a [GraphQLClientLogger].
  ///
  /// - [logName]: The name to use for the logger instance.
  /// Returns a new [GraphQLClientLogger] that proxies the original client.
  GraphQLClient withLogger(final String logName) =>
      GraphQLClientLogger(client: this, logName: logName);
}

/// A [GraphQLClient] proxy that logs GraphQL queries, mutations, and their responses.
///
/// It delegates all GraphQL operations to an underlying [GraphQLClient] instance
/// while logging the request body and response body (or errors) using the `logging` package.
class GraphQLClientLogger implements GraphQLClient {
  /// Creates a [GraphQLClientLogger] instance.
  ///
  /// - [client]: The underlying [GraphQLClient] to which operations will be delegated.
  /// - [logName]: The name for the [Logger] instance.
  GraphQLClientLogger({required this.client, required this.logName}) {
    _logger = Logger(logName);
  }

  /// The underlying [GraphQLClient] that this logger proxies.
  final GraphQLClient client;

  /// The name used for the logger.
  final String logName;
  late final Logger _logger;

  final _jsonEncoder = const JsonEncoder.withIndent('  ');

  @override
  GraphQLCache get cache => client.cache;

  @override
  QueryManager get queryManager => client.queryManager;

  @override
  set queryManager(final QueryManager queryManager) =>
      client.queryManager = queryManager;

  @override
  DefaultPolicies get defaultPolicies => client.defaultPolicies;

  @override
  set defaultPolicies(final DefaultPolicies defaultPolicies) =>
      client.defaultPolicies = defaultPolicies;

  @override
  Link get link => client.link;

  /// Creates a copy of this [GraphQLClientLogger] with potentially new configurations.
  ///
  /// If [logName] is provided, the new logger instance will use it. Otherwise, it inherits
  /// the current [logName]. Other parameters are passed to the underlying client's `copyWith` method.
  @override
  GraphQLClient copyWith({
    final String? logName,
    final Link? link,
    final GraphQLCache? cache,
    final DefaultPolicies? defaultPolicies,
    final bool? alwaysRebroadcast,
    final Duration? queryRequestTimeout,
    final bool? deduplicatePollers,
    // ignore: avoid_annotating_with_dynamic
    final bool Function(dynamic, dynamic)? deepEquals,
  }) => GraphQLClientLogger(
    logName: logName ?? this.logName,
    client: client.copyWith(
      link: link,
      cache: cache,
      defaultPolicies: defaultPolicies,
      alwaysRebroadcast: alwaysRebroadcast,
      queryRequestTimeout: queryRequestTimeout,
      deduplicatePollers: deduplicatePollers ?? false,
      deepEquals: deepEquals,
    ),
  );

  @override
  Future<QueryResult<TParsed>> fetchMore<TParsed>(
    final FetchMoreOptions fetchMoreOptions, {
    required final QueryOptions<TParsed> originalOptions,
    required final QueryResult<TParsed> previousResult,
  }) => client.fetchMore(
    fetchMoreOptions,
    originalOptions: originalOptions,
    previousResult: previousResult,
  );

  /// Executes a mutation and logs the request and response/error.
  ///
  /// Delegates to the underlying client's `mutate` method.
  /// Logging for mutations is not explicitly implemented here but would be similar to `query` if added.
  @override
  Future<QueryResult<TParsed>> mutate<TParsed>(
    final MutationOptions<TParsed> options,
  ) async {
    _logger.fine(
      '${DateTime.now()} mutation requestHttp.body=${printNode(options.document)}',
    );
    final result = await client.mutate(options);
    if (result.hasException) {
      _logger.fine(
        '${DateTime.now()} mutation responseHttp.error=${_jsonEncoder.convert(result.exception?.toJson)}',
      );
    }
    _logger.fine(
      '${DateTime.now()} mutation responseHttp.body=${_jsonEncoder.convert(result.data)}',
    );
    return result;
  }

  /// Executes a query and logs the request and response/error.
  ///
  /// Logs the GraphQL query document before sending the request.
  /// Logs the response data or exception details upon receiving the result.
  @override
  Future<QueryResult<TParsed>> query<TParsed>(
    final QueryOptions<TParsed> options,
  ) async {
    _logger.fine(
      '${DateTime.now()} requestHttp.body=${printNode(options.document)}',
    );

    final result = await client.query(options);

    if (result.hasException) {
      _logger.fine(
        '${DateTime.now()} responseHttp.error=${_jsonEncoder.convert(result.exception?.toJson)}',
      );
    }
    _logger.fine(
      '${DateTime.now()} responseHttp.body=${_jsonEncoder.convert(result.data)}',
    );

    return result;
  }

  @override
  Map<String, dynamic>? readFragment(
    final FragmentRequest fragmentRequest, {
    final bool optimistic = true,
  }) => client.readFragment(fragmentRequest, optimistic: optimistic);

  @override
  Map<String, dynamic>? readQuery(
    final Request request, {
    final bool optimistic = true,
  }) => client.readQuery(request, optimistic: optimistic);

  @override
  Future<List<QueryResult<Object?>?>>? resetStore({
    final bool refetchQueries = true,
  }) => client.resetStore(refetchQueries: refetchQueries);

  /// Subscribes to a GraphQL subscription and logs the subscription request.
  ///
  /// Logging for subscription data/errors is not explicitly implemented here but would be similar to `query` if added.
  @override
  Stream<QueryResult<TParsed>> subscribe<TParsed>(
    final SubscriptionOptions<TParsed> options,
  ) {
    _logger.fine(
      '${DateTime.now()} subscription requestHttp.body=${printNode(options.document)}',
    );
    return client.subscribe(options);
  }

  @override
  ObservableQuery<TParsed> watchMutation<TParsed>(
    final WatchQueryOptions<TParsed> options,
  ) => client.watchMutation(options);

  @override
  ObservableQuery<TParsed> watchQuery<TParsed>(
    final WatchQueryOptions<TParsed> options,
  ) => client.watchQuery(options);

  @override
  void writeFragment(
    final FragmentRequest fragmentRequest, {
    required final Map<String, dynamic> data,
    final bool? broadcast = true,
  }) => client.writeFragment(fragmentRequest, data: data, broadcast: broadcast);

  @override
  void writeQuery(
    final Request request, {
    required final Map<String, dynamic> data,
    final bool? broadcast = true,
  }) => client.writeQuery(request, data: data, broadcast: broadcast);
}

/// Provides utility methods for [OperationException] for logging purposes.
extension OperationExceptionPrint on OperationException {
  /// Converts an [OperationException] to a JSON-like map for structured logging.
  ///
  /// Includes information about link exceptions and GraphQL errors.
  Map<String, dynamic> get toJson => {
    'linkException': linkException.toString(),
    'graphqlErrors':
        graphqlErrors
            .map(
              (final error) => {
                'message': error.message,
                'locations': error.locations.toString(),
              },
            )
            .toList(),
  };
}
