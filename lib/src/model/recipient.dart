import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipient.freezed.dart';
part 'recipient.g.dart';

/// Represents a recipient of a transaction, typically for invoking a smart contract action.
///
/// It specifies the contract address, the action to call, and the arguments for that action.
@freezed
abstract class Recipient with _$Recipient {
  /// Creates a [Recipient] instance.
  ///
  /// The [action] is the name of the smart contract function to be called.
  /// The [address] is the address of the smart contract.
  /// The [args] is a list or map of arguments for the contract action. It should contain JSON serializable data.
  const factory Recipient({
    /// The name of the action (function) to be called on the smart contract.
    final String? action,

    /// The address of the smart contract.
    final String? address,

    /// The arguments to be passed to the contract action.
    /// This can be a list or a map, and its elements should be JSON serializable.
    /// For consistency in signing and hashing, map keys within args are sorted recursively by [sortArgs].
    final args,
  }) = _Recipient;

  /// Private constructor for [Recipient].
  const Recipient._();

  /// Creates a [Recipient] instance from a JSON map.
  factory Recipient.fromJson(final Map<String, dynamic> json) =>
      _$RecipientFromJson(json);

  /// Sorts the arguments ([args]) if they are a list of maps or a map itself.
  ///
  /// This is important for ensuring consistent serialization and hashing of transactions
  /// that involve contract calls with map arguments, as map key order is not guaranteed.
  /// It recursively sorts keys of any nested maps within the arguments.
  ///
  /// Returns a new list with sorted map arguments, or the original args if not a list of maps/map, or null if args is null.
  List<Object>? sortArgs() {
    if (args == null) {
      return null;
    }
    if (args is List) {
      final newList = List<Object>.from(args! as List);
      for (var i = 0; i < newList.length; i++) {
        if (newList[i] is Map) {
          newList[i] = sortMapKeys(newList[i] as Map<String, dynamic>);
        }
      }
      return newList;
    }
    if (args is Map) {
      return [sortMapKeys(args! as Map<String, dynamic>)];
    }
    return (args is List) ? List<Object>.from(args) : [args];
  }

  /// Recursively sorts the keys of a map and any nested maps alphabetically.
  ///
  /// - [map]: The map to sort.
  /// Returns a new map with keys sorted alphabetically.
  Map<String, dynamic> sortMapKeys(final Map<String, dynamic> map) {
    final sortedMap = Map.fromEntries(
      map.entries.toList()..sort((final a, final b) => a.key.compareTo(b.key)),
    );

    for (final key in sortedMap.keys) {
      if (sortedMap[key] is Map) {
        sortedMap[key] = sortMapKeys(sortedMap[key]);
      }
    }

    return sortedMap;
  }
}
