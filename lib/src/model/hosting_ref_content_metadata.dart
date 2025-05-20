import 'package:archethic_lib_dart/src/model/hosting_ref.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hosting_ref_content_metadata.freezed.dart';
part 'hosting_ref_content_metadata.g.dart';

/// Represents metadata for a specific piece of content within a [HostingRef].
///
/// This includes the content's hash, size, encoding, and the addresses where it can be found.
@freezed
abstract class HostingRefContentMetaData with _$HostingRefContentMetaData {
  /// Creates a [HostingRefContentMetaData] instance.
  ///
  /// The [hash] defaults to an empty string.
  /// The [size] defaults to 0.
  /// The [encoding] defaults to an empty string.
  /// The [addresses] defaults to an empty list.
  const factory HostingRefContentMetaData({
    /// The hash of the content, used for integrity verification.
    @Default('') final String hash,

    /// The size of the content in bytes.
    @Default(0) final int size,

    /// The encoding of the content (e.g., 'utf-8', 'gzip').
    @Default('') final String encoding,

    /// A list of addresses (e.g., transaction hashes or storage node identifiers) where the content is stored or can be retrieved from.
    @Default([]) final List<String> addresses,
  }) = _HostingRefContentMetaData;

  /// Private constructor for [HostingRefContentMetaData].
  const HostingRefContentMetaData._();

  /// Creates a [HostingRefContentMetaData] instance from a JSON map.
  factory HostingRefContentMetaData.fromJson(final Map<String, dynamic> json) =>
      _$HostingRefContentMetaDataFromJson(json);
}
