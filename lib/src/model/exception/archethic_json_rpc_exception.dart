import 'package:freezed_annotation/freezed_annotation.dart';

/// Exception representing an error returned by an Archethic JSON-RPC endpoint.
///
/// JSON-RPC errors typically include a code, a message, and optional data.
@immutable
class ArchethicJsonRPCException implements Exception {
  /// Creates an [ArchethicJsonRPCException].
  ///
  /// The [code] is the error code from the JSON-RPC response.
  /// The [message] is the human-readable error message.
  /// The [data] is an optional field that can contain additional error-specific information.
  const ArchethicJsonRPCException({
    required this.code,
    required this.message,
    this.data,
  });

  /// The error code provided by the JSON-RPC server.
  final int code;

  /// The error message provided by the JSON-RPC server.
  final String message;

  /// Optional additional data associated with the error.
  final Object? data;
}
