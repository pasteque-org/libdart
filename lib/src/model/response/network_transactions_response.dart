import 'package:archethic_lib_dart/src/model/transaction.dart';

/// Represents the data structure for a response containing a list of network transactions.
///
/// This class is typically used to parse JSON responses from API endpoints that return
/// a collection of transactions from the Archethic network.
class TransactionsResponseData {
  /// Creates an instance of [TransactionsResponseData].
  ///
  /// - [networkTransactions]: An optional list of [Transaction] objects.
  ///   Can be null if the response does not contain any transactions or if the field is absent.
  TransactionsResponseData({this.networkTransactions});

  /// Creates a [TransactionsResponseData] instance from a JSON map.
  ///
  /// Parses the 'networkTransactions' field from the JSON, which is expected to be a list
  /// of transaction objects, and converts each into a [Transaction] instance.
  /// If 'networkTransactions' is null or not present in the JSON, the [networkTransactions] field will be null.
  ///
  /// - [json]: The JSON map to deserialize.
  factory TransactionsResponseData.fromJson(final Map<String, dynamic> json) =>
      TransactionsResponseData(
        networkTransactions:
            json['networkTransactions'] == null
                ? null
                : List<Transaction>.from(
                  json['networkTransactions'].map(
                    (final x) => Transaction.fromJson(x),
                  ),
                ),
      );

  /// A list of transactions retrieved from the network. Can be null.
  List<Transaction>? networkTransactions;

  /// Converts this [TransactionsResponseData] instance into a JSON map.
  ///
  /// Serializes the [networkTransactions] list back into a JSON-compatible format.
  /// If [networkTransactions] is null, it will likely result in an error when `map` is called on null.
  /// It's assumed that [networkTransactions] will be non-null if this method is called in a valid state,
  /// or the calling code should handle the potential nullability.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'networkTransactions': List<Transaction>.from(
      networkTransactions!.map((final x) => x.toJson()),
    ),
  };
}
