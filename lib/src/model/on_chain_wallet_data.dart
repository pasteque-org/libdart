import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_chain_wallet_data.freezed.dart';
part 'on_chain_wallet_data.g.dart';

/// Represents encrypted wallet information stored on the Archethic blockchain.
///
/// This class typically holds an [encodedWalletKey] (which might be an encrypted symmetric key)
/// and the main [encryptedWallet] data.
@freezed
abstract class OnChainWalletData with _$OnChainWalletData {
  /// Creates an instance of [OnChainWalletData].
  ///
  /// - [encodedWalletKey]: The encoded (possibly encrypted) key used to decrypt the main wallet data.
  ///                       Can be null if not applicable or not yet set.
  /// - [encryptedWallet]: The encrypted wallet data itself. Can be null if not applicable or not yet set.
  const factory OnChainWalletData({
    /// The encoded key that can be used (potentially after decryption with a user's master key)
    /// to decrypt the [encryptedWallet]. This might be an encrypted symmetric key.
    final String? encodedWalletKey,

    /// The main wallet data, stored in an encrypted format on the blockchain.
    final String? encryptedWallet,
  }) = _OnChainWalletData;

  /// Private constructor for `freezed` compatibility.
  const OnChainWalletData._();

  /// Creates an [OnChainWalletData] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$OnChainWalletDataFromJson` function
  /// to deserialize the JSON data.
  factory OnChainWalletData.fromJson(final Map<String, dynamic> json) =>
      _$OnChainWalletDataFromJson(json);
}
