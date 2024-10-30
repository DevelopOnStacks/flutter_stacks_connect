// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignatureRequestImpl _$$SignatureRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignatureRequestImpl(
      message: json['message'] as String,
      domain: json['domain'] as String,
      network: json['network'] as String?,
    );

Map<String, dynamic> _$$SignatureRequestImplToJson(
        _$SignatureRequestImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'domain': instance.domain,
      'network': instance.network,
    };
