// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BitcoinTransactionImpl _$$BitcoinTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$BitcoinTransactionImpl(
      hex: json['hex'] as String,
      signAtIndex: (json['signAtIndex'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      allowedSighash: (json['allowedSighash'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SignatureHashEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$BitcoinTransactionImplToJson(
        _$BitcoinTransactionImpl instance) =>
    <String, dynamic>{
      'hex': instance.hex,
      'signAtIndex': instance.signAtIndex,
      'allowedSighash': instance.allowedSighash
          ?.map((e) => _$SignatureHashEnumMap[e]!)
          .toList(),
    };

const _$SignatureHashEnumMap = {
  SignatureHash.ALL: 'ALL',
  SignatureHash.NONE: 'NONE',
  SignatureHash.SINGLE: 'SINGLE',
  SignatureHash.ANYONECANPAY: 'ANYONECANPAY',
};
