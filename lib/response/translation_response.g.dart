// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationResponse _$TranslationResponseFromJson(Map<String, dynamic> json) =>
    TranslationResponse(
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => DefinitionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      root: json['root'] as String? ?? '',
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
      text: json['text'] as String,
      language:
          LanguageResponse.fromJson(json['language'] as Map<String, dynamic>),
      sound: json['sound'] as String? ?? '',
      word: json['word'] as String,
    );

Map<String, dynamic> _$TranslationResponseToJson(
        TranslationResponse instance) =>
    <String, dynamic>{
      'root': instance.root,
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'text': instance.text,
      'language': instance.language,
      'definitions': instance.definitions,
      'word': instance.word,
      'sound': instance.sound,
    };
