// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkConfigConverter _$NetworkConfigConverterFromJson(
        Map<String, dynamic> json) =>
    NetworkConfigConverter();

Map<String, dynamic> _$NetworkConfigConverterToJson(
        NetworkConfigConverter instance) =>
    <String, dynamic>{};

_$StacksTransactionImpl _$$StacksTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$StacksTransactionImpl(
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      contractAddress: json['contractAddress'] as String?,
      contractName: json['contractName'] as String?,
      functionName: json['functionName'] as String?,
      functionArgs: json['functionArgs'] as List<dynamic>?,
      recipient: json['recipient'] as String?,
      amount: _$JsonConverterFromJson<String, BigInt>(
          json['amount'], const BigIntConverter().fromJson),
      memo: json['memo'] as String?,
      network: const NetworkConfigConverter()
          .fromJson(json['network'] as Map<String, dynamic>),
      fee: (json['fee'] as num?)?.toInt(),
      postConditions: (json['postConditions'] as List<dynamic>?)
          ?.map((e) => PostCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StacksTransactionImplToJson(
        _$StacksTransactionImpl instance) =>
    <String, dynamic>{
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'contractAddress': instance.contractAddress,
      'contractName': instance.contractName,
      'functionName': instance.functionName,
      'functionArgs': instance.functionArgs,
      'recipient': instance.recipient,
      'amount': _$JsonConverterToJson<String, BigInt>(
          instance.amount, const BigIntConverter().toJson),
      'memo': instance.memo,
      'network': const NetworkConfigConverter().toJson(instance.network),
      'fee': instance.fee,
      'postConditions': instance.postConditions,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.contractCall: 'contractCall',
  TransactionType.contractDeploy: 'contractDeploy',
  TransactionType.stxTransfer: 'stxTransfer',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
