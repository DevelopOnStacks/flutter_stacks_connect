// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacksWalletProviderImpl _$$StacksWalletProviderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacksWalletProviderImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String?,
      webUrl: json['webUrl'] as String?,
      chromeWebStoreUrl: json['chromeWebStoreUrl'] as String?,
      mozillaAddOnsUrl: json['mozillaAddOnsUrl'] as String?,
      googlePlayStoreUrl: json['googlePlayStoreUrl'] as String?,
      iOSAppStoreUrl: json['iOSAppStoreUrl'] as String?,
    );

Map<String, dynamic> _$$StacksWalletProviderImplToJson(
        _$StacksWalletProviderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'webUrl': instance.webUrl,
      'chromeWebStoreUrl': instance.chromeWebStoreUrl,
      'mozillaAddOnsUrl': instance.mozillaAddOnsUrl,
      'googlePlayStoreUrl': instance.googlePlayStoreUrl,
      'iOSAppStoreUrl': instance.iOSAppStoreUrl,
    };
