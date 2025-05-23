import 'package:freezed_annotation/freezed_annotation.dart';

/// Base class for all Archethic specific exceptions.
///
/// Implementing [Exception] allows these classes to be used in `throw` and `catch` clauses.
abstract class ArchethicException implements Exception {}

/// Exception thrown when there is a problem with the connection to an Archethic node or service.
@immutable
class ArchethicConnectionException implements ArchethicException {
  /// Creates an [ArchethicConnectionException].
  ///
  /// The [cause] provides a human-readable description of the connection issue.
  const ArchethicConnectionException(this.cause);

  /// A message describing the cause of the connection exception.
  final String cause;
}

/// Exception thrown when an Archethic node or service returns an invalid or unexpected response.
@immutable
class ArchethicInvalidResponseException implements ArchethicException {
  /// Creates an [ArchethicInvalidResponseException].
  ///
  /// The [cause] provides a human-readable description of why the response is considered invalid.
  const ArchethicInvalidResponseException(this.cause);

  /// A message describing why the response was invalid.
  final String cause;
}

/// Exception thrown when too many requests have been sent to an Archethic node or service in a short period.
///
/// This usually indicates rate limiting is in effect.
@immutable
class ArchethicTooManyRequestsException implements ArchethicException {
  /// Creates an [ArchethicTooManyRequestsException].
  const ArchethicTooManyRequestsException();
}

/// Exception thrown when an Archethic service is temporarily unavailable.
@immutable
class ArchethicServiceUnavailableException implements ArchethicException {
  /// Creates an [ArchethicServiceUnavailableException].
  const ArchethicServiceUnavailableException();
}

/// Exception thrown when an operation requires a keychain but it does not exist or cannot be found.
@immutable
class ArchethicKeychainNotExistsException implements ArchethicException {
  /// Creates an [ArchethicKeychainNotExistsException].
  const ArchethicKeychainNotExistsException();
}
