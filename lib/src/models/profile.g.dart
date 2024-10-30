// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      social: (json['social'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      apps: json['apps'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'social': instance.social,
      'apps': instance.apps,
    };
