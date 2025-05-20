import 'package:archethic_lib_dart/src/model/validation_stamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cross_validation_stamp.freezed.dart';
part 'cross_validation_stamp.g.dart';

/// Represents an approval of a [ValidationStamp] by a cross-validation node.
///
/// In a distributed consensus mechanism, multiple nodes might need to attest to the validity
/// of a transaction's validation stamp. This class captures such an attestation.
@freezed
abstract class CrossValidationStamp with _$CrossValidationStamp {
  /// Creates a [CrossValidationStamp] instance.
  ///
  /// The [nodePublicKey] identifies the cross-validating node.
  /// The [signature] is the node's signature over the original [ValidationStamp].
  const factory CrossValidationStamp({
    /// The public key of the node that performed the cross-validation.
    final String? nodePublicKey,

    /// The signature of the cross-validating node over the content of the [ValidationStamp]
    /// (or a hash of it) that this stamp is approving.
    final String? signature,
  }) = _CrossValidationStamp;

  /// Private constructor for [CrossValidationStamp].
  const CrossValidationStamp._();

  /// Creates a [CrossValidationStamp] instance from a JSON map.
  factory CrossValidationStamp.fromJson(final Map<String, dynamic> json) =>
      _$CrossValidationStampFromJson(json);
}
