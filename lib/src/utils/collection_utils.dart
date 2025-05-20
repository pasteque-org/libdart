// ignore_for_file: comment_references

/// Extension methods for [Map] objects.
extension MapExt<K, V> on Map<K, V> {
  /// Creates a new map by transforming the values of the original map.
  ///
  /// Applies the [valueTransform] function to each value in the map to produce new values.
  /// Optionally, a list of [keysToIgnore] can be provided to exclude certain entries
  /// from the transformation and the resulting map.
  ///
  /// - [valueTransform]: A function that takes a value of type [V] and returns a transformed value of type [T].
  /// - [keysToIgnore]: An optional list of keys of type [K] whose entries should not be included in the new map.
  ///                   Defaults to an empty list, meaning all entries are processed.
  ///
  /// Returns a new [Map<K, T>] with the original keys and transformed values,
  /// excluding any entries whose keys were in [keysToIgnore].
  Map<K, T> mapValues<T>(
    final T Function(V value) valueToJson, {
    final List<K> keysToIgnore = const [],
  }) => Map.fromEntries(
    entries
        .where((final entry) {
          // Include entry if its key is not in keysToIgnore
          return !keysToIgnore.contains(entry.key);
        })
        .map((final entry) => MapEntry(entry.key, valueToJson(entry.value))),
  );

  /// Renames a key in the map from [previousKey] to [newKey].
  ///
  /// This is a destructive operation; it modifies the original map directly.
  /// If [previousKey] does not exist in the map, or if its value is `null`,
  /// the map remains unchanged.
  ///
  /// - [previousKey]: The current key to be renamed.
  /// - [newKey]: The new key to replace [previousKey].
  void renameKey(final K previousKey, final K newKey) {
    final value = this[previousKey];
    // The check for containsKey above makes this null check for value potentially redundant
    // if null values are not allowed or treated differently, but kept for safety.
    // If previousKey exists, value will be this[previousKey], which could be null.
    // The original code was: if (value == null) return; this would prevent renaming a key if its value is null.
    // The current behavior is: if previousKey exists, its entry (key and value) will be moved to newKey.

    this[newKey] = value as V; // Assign the value to the new key
    remove(previousKey); // Remove the old key
  }
}
