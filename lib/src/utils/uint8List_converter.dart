// ignore_for_file: file_names

import 'dart:typed_data' show Uint8List;

import 'package:freezed_annotation/freezed_annotation.dart';

/// A [JsonConverter] for converting [Uint8List] to and from a [List<int>].
///
/// This is typically used with `freezed` or other JSON serialization libraries
/// to handle [Uint8List] fields, as [Uint8List] itself is not directly
/// serializable to JSON by default (which usually expects lists of numbers or strings).
class Uint8ListConverter implements JsonConverter<Uint8List?, List<int>?> {
  /// Creates a const instance of [Uint8ListConverter].
  const Uint8ListConverter();

  /// Converts a JSON [List<int>] to a [Uint8List].
  ///
  /// If the input [json] list is `null`, this method returns `null`.
  /// Otherwise, it creates a [Uint8List] from the elements of the [json] list.
  @override
  Uint8List? fromJson(final List<int>? json) =>
      json == null ? null : Uint8List.fromList(json);

  /// Converts a [Uint8List] to a JSON-compatible [List<int>].
  ///
  /// If the input [object] ([Uint8List]) is `null`, this method returns `null`.
  /// Otherwise, it converts the [Uint8List] to a standard [List<int>].
  @override
  List<int>? toJson(final Uint8List? object) => object?.toList();
}
