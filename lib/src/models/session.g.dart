// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacksSessionImpl _$$StacksSessionImplFromJson(Map<String, dynamic> json) =>
    _$StacksSessionImpl(
      publicKey: json['publicKey'] as String,
      profile: json['profile'] as String?,
      network: json['network'] as String,
      appData: json['appData'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacksSessionImplToJson(_$StacksSessionImpl instance) =>
    <String, dynamic>{
      'publicKey': instance.publicKey,
      'profile': instance.profile,
      'network': instance.network,
      'appData': instance.appData,
    };
