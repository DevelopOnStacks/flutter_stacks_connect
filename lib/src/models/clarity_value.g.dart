// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clarity_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoneCVImpl _$$NoneCVImplFromJson(Map<String, dynamic> json) => _$NoneCVImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoneCVImplToJson(_$NoneCVImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UIntCVImpl _$$UIntCVImplFromJson(Map<String, dynamic> json) => _$UIntCVImpl(
      BigInt.parse(json['value'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UIntCVImplToJson(_$UIntCVImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toString(),
      'runtimeType': instance.$type,
    };

_$IntCVImpl _$$IntCVImplFromJson(Map<String, dynamic> json) => _$IntCVImpl(
      BigInt.parse(json['value'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IntCVImplToJson(_$IntCVImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toString(),
      'runtimeType': instance.$type,
    };

_$BoolCVImpl _$$BoolCVImplFromJson(Map<String, dynamic> json) => _$BoolCVImpl(
      json['value'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BoolCVImplToJson(_$BoolCVImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$BufferCVImpl _$$BufferCVImplFromJson(Map<String, dynamic> json) =>
    _$BufferCVImpl(
      (json['buffer'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BufferCVImplToJson(_$BufferCVImpl instance) =>
    <String, dynamic>{
      'buffer': instance.buffer,
      'runtimeType': instance.$type,
    };

_$StringCVImpl _$$StringCVImplFromJson(Map<String, dynamic> json) =>
    _$StringCVImpl(
      json['content'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringCVImplToJson(_$StringCVImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'runtimeType': instance.$type,
    };

_$ListCVImpl _$$ListCVImplFromJson(Map<String, dynamic> json) => _$ListCVImpl(
      (json['values'] as List<dynamic>)
          .map((e) => ClarityValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListCVImplToJson(_$ListCVImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
      'runtimeType': instance.$type,
    };

_$TupleCVImpl _$$TupleCVImplFromJson(Map<String, dynamic> json) =>
    _$TupleCVImpl(
      (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ClarityValue.fromJson(e as Map<String, dynamic>)),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TupleCVImplToJson(_$TupleCVImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$PrincipalCVImpl _$$PrincipalCVImplFromJson(Map<String, dynamic> json) =>
    _$PrincipalCVImpl(
      json['address'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PrincipalCVImplToJson(_$PrincipalCVImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'runtimeType': instance.$type,
    };
