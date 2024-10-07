// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordResponse _$WordResponseFromJson(Map<String, dynamic> json) => WordResponse(
      sku: json['sku'] as String?,
      ordinal: (json['ordinal'] as num?)?.toDouble(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num?)?.toInt(),
      definition: json['definition'] as String?,
      text: json['text'] as String?,
      language: json['language'] == null
          ? null
          : LanguageResponse.fromJson(json['language'] as Map<String, dynamic>),
      sound: json['sound'] == null
          ? null
          : SoundResponse.fromJson(json['sound'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$WordResponseToJson(WordResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'ordinal': instance.ordinal,
      'createDate': instance.createDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'version': instance.version,
      'definition': instance.definition,
      'text': instance.text,
      'language': instance.language,
      'sound': instance.sound,
      'image': instance.image,
    };
