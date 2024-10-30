// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkConfigImpl _$$NetworkConfigImplFromJson(Map<String, dynamic> json) =>
    _$NetworkConfigImpl(
      url: json['url'] as String,
      type: $enumDecode(_$NetworkTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$NetworkConfigImplToJson(_$NetworkConfigImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': _$NetworkTypeEnumMap[instance.type]!,
    };

const _$NetworkTypeEnumMap = {
  NetworkType.mainnet: 'mainnet',
  NetworkType.testnet: 'testnet',
  NetworkType.devnet: 'devnet',
};
