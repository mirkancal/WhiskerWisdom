// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactDTO _$$_CatFactDTOFromJson(Map<String, dynamic> json) =>
    _$_CatFactDTO(
      id: json['_id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      verified: json['verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CatFactDTOToJson(_$_CatFactDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'verified': instance.verified,
    };
