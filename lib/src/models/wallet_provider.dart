import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_provider.freezed.dart';
part 'wallet_provider.g.dart';

@freezed
class StacksWalletProvider with _$StacksWalletProvider {
  const factory StacksWalletProvider({
    required String id,
    required String name,
    String? icon,
    String? webUrl,
    String? chromeWebStoreUrl,
    String? mozillaAddOnsUrl,
    String? googlePlayStoreUrl,
    String? iOSAppStoreUrl,
  }) = _StacksWalletProvider;

  factory StacksWalletProvider.fromJson(Map<String, dynamic> json) =>
      _$StacksWalletProviderFromJson(json);
}
