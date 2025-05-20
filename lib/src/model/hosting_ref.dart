import 'package:archethic_lib_dart/src/model/hosting_ref_content_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hosting_ref.freezed.dart';
part 'hosting_ref.g.dart';

/// Represents a hosting reference, typically used for AEWeb (Archethic Web) content.
///
/// It includes information about the AEWeb version, hash function used for content integrity,
/// metadata for various content paths, and an SSL certificate.
@freezed
abstract class HostingRef with _$HostingRef {
  /// Creates a [HostingRef] instance.
  ///
  /// The [aewebVersion] defaults to 1.
  /// The [hashFunction] defaults to 'sha1'.
  /// The [metaData] is a map of content paths to their [HostingRefContentMetaData], defaulting to an empty map.
  /// The [sslCertificate] defaults to an empty string.
  const factory HostingRef({
    /// The version of the AEWeb specification being used.
    @Default(1) final int aewebVersion,

    /// The hash function used to verify the integrity of the hosted content (e.g., 'sha1', 'sha256').
    @Default('sha1') final String hashFunction,

    /// Metadata for different content paths. The keys are typically file paths or identifiers,
    /// and the values are [HostingRefContentMetaData] objects.
    @Default({}) final Map<String, HostingRefContentMetaData> metaData,

    /// The SSL certificate associated with the hosted content, if applicable.
    @Default('') final String sslCertificate,
  }) = _HostingRef;

  /// Private constructor for [HostingRef].
  const HostingRef._();

  /// Creates a [HostingRef] instance from a JSON map.
  factory HostingRef.fromJson(final Map<String, dynamic> json) =>
      _$HostingRefFromJson(json);
}
