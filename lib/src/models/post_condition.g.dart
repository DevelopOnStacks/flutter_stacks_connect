// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetInfoImpl _$$AssetInfoImplFromJson(Map<String, dynamic> json) =>
    _$AssetInfoImpl(
      contractAddress: json['contractAddress'] as String,
      contractName: json['contractName'] as String,
      assetName: json['assetName'] as String,
    );

Map<String, dynamic> _$$AssetInfoImplToJson(_$AssetInfoImpl instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'contractName': instance.contractName,
      'assetName': instance.assetName,
    };

_$PostConditionPrincipalOriginImpl _$$PostConditionPrincipalOriginImplFromJson(
        Map<String, dynamic> json) =>
    _$PostConditionPrincipalOriginImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostConditionPrincipalOriginImplToJson(
        _$PostConditionPrincipalOriginImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostConditionPrincipalStandardImpl
    _$$PostConditionPrincipalStandardImplFromJson(Map<String, dynamic> json) =>
        _$PostConditionPrincipalStandardImpl(
          address: json['address'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PostConditionPrincipalStandardImplToJson(
        _$PostConditionPrincipalStandardImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'runtimeType': instance.$type,
    };

_$PostConditionPrincipalContractImpl
    _$$PostConditionPrincipalContractImplFromJson(Map<String, dynamic> json) =>
        _$PostConditionPrincipalContractImpl(
          address: json['address'] as String,
          contractName: json['contractName'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PostConditionPrincipalContractImplToJson(
        _$PostConditionPrincipalContractImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'contractName': instance.contractName,
      'runtimeType': instance.$type,
    };

_$STXPostConditionImpl _$$STXPostConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$STXPostConditionImpl(
      principal: PostConditionPrincipal.fromJson(
          json['principal'] as Map<String, dynamic>),
      condition: $enumDecode(_$PostConditionCodeEnumMap, json['condition']),
      amount: BigInt.parse(json['amount'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$STXPostConditionImplToJson(
        _$STXPostConditionImpl instance) =>
    <String, dynamic>{
      'principal': instance.principal,
      'condition': _$PostConditionCodeEnumMap[instance.condition]!,
      'amount': instance.amount.toString(),
      'runtimeType': instance.$type,
    };

const _$PostConditionCodeEnumMap = {
  PostConditionCode.sent: 'sent',
  PostConditionCode.received: 'received',
};

_$FungiblePostConditionImpl _$$FungiblePostConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$FungiblePostConditionImpl(
      principal: PostConditionPrincipal.fromJson(
          json['principal'] as Map<String, dynamic>),
      condition: $enumDecode(_$PostConditionCodeEnumMap, json['condition']),
      amount: BigInt.parse(json['amount'] as String),
      asset: AssetInfo.fromJson(json['asset'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FungiblePostConditionImplToJson(
        _$FungiblePostConditionImpl instance) =>
    <String, dynamic>{
      'principal': instance.principal,
      'condition': _$PostConditionCodeEnumMap[instance.condition]!,
      'amount': instance.amount.toString(),
      'asset': instance.asset,
      'runtimeType': instance.$type,
    };

_$NonFungiblePostConditionImpl _$$NonFungiblePostConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$NonFungiblePostConditionImpl(
      principal: PostConditionPrincipal.fromJson(
          json['principal'] as Map<String, dynamic>),
      condition: $enumDecode(_$PostConditionCodeEnumMap, json['condition']),
      asset: AssetInfo.fromJson(json['asset'] as Map<String, dynamic>),
      assetId: json['assetId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NonFungiblePostConditionImplToJson(
        _$NonFungiblePostConditionImpl instance) =>
    <String, dynamic>{
      'principal': instance.principal,
      'condition': _$PostConditionCodeEnumMap[instance.condition]!,
      'asset': instance.asset,
      'assetId': instance.assetId,
      'runtimeType': instance.$type,
    };
