// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractCallImpl _$$ContractCallImplFromJson(Map<String, dynamic> json) =>
    _$ContractCallImpl(
      contractAddress: json['contractAddress'] as String,
      contractName: json['contractName'] as String,
      functionName: json['functionName'] as String,
      functionArgs: (json['functionArgs'] as List<dynamic>)
          .map((e) => ClarityValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      network: json['network'] as String?,
      fee: (json['fee'] as num?)?.toInt(),
      postConditions: (json['postConditions'] as List<dynamic>?)
          ?.map((e) => PostCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContractCallImplToJson(_$ContractCallImpl instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'contractName': instance.contractName,
      'functionName': instance.functionName,
      'functionArgs': instance.functionArgs,
      'network': instance.network,
      'fee': instance.fee,
      'postConditions': instance.postConditions,
    };
