// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationResponse _$TranslationResponseFromJson(Map<String, dynamic> json) =>
    TranslationResponse(
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
      text: json['text'] as String,
      language:
          LanguageResponse.fromJson(json['language'] as Map<String, dynamic>),
      sound: json['sound'] as String? ?? '',
      image: (json['image'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TranslationResponseToJson(
        TranslationResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'text': instance.text,
      'language': instance.language,
      'sound': instance.sound,
      'image': instance.image,
    };
