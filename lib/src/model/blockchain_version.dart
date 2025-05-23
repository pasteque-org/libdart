import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_version.freezed.dart';
part 'blockchain_version.g.dart';

/// Represents the versions of different components of the Archethic blockchain.
///
/// This model encapsulates the code, transaction, and protocol versions.
@freezed
abstract class BlockchainVersionModel with _$BlockchainVersionModel {
  /// Creates a [BlockchainVersionModel] instance.
  ///
  /// The [version] parameter holds the detailed version information.
  const factory BlockchainVersionModel({
    /// The detailed blockchain version information.
    required final BlockchainVersion version,
  }) = _BlockchainVersionModel;

  /// Creates a [BlockchainVersionModel] instance from a JSON map.
  factory BlockchainVersionModel.fromJson(final Map<String, dynamic> json) =>
      _$BlockchainVersionModelFromJson(json);
}

/// Represents the specific versions for code, protocol, and transactions.
@freezed
abstract class BlockchainVersion with _$BlockchainVersion {
  /// Creates a [BlockchainVersion] instance.
  ///
  /// The [code] parameter is an optional string representing the code version.
  /// The [protocol] parameter is a required string representing the protocol version.
  /// The [transaction] parameter is a required string representing the transaction version.
  const factory BlockchainVersion({
    /// The version of the network protocol.
    required final String protocol,

    /// The version of the transaction format.
    required final String transaction,

    /// The version of the codebase.
    final String? code,
  }) = _BlockchainVersion;

  /// Creates a [BlockchainVersion] instance from a JSON map.
  factory BlockchainVersion.fromJson(final Map<String, dynamic> json) =>
      _$BlockchainVersionFromJson(json);
}
