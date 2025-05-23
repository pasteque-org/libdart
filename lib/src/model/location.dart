import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

/// Represents a specific location, typically used to indicate the position of an error
/// or an item within a larger context (e.g., in a file or a data structure).
///
/// It usually consists of a [line] and [column] number.
@freezed
abstract class Location with _$Location {
  /// Creates an instance of [Location].
  ///
  /// - [column]: The column number, typically 1-based. Can be null if not applicable.
  /// - [line]: The line number, typically 1-based. Can be null if not applicable.
  const factory Location({final int? column, final int? line}) = _Location;

  /// Private constructor for `freezed` compatibility.
  const Location._();

  /// Creates a [Location] instance from a JSON map.
  factory Location.fromJson(final Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
