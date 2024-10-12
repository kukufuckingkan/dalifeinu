// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefinitionResponse _$DefinitionResponseFromJson(Map<String, dynamic> json) =>
    DefinitionResponse(
      text: json['text'] as String,
      word: json['word'] as String,
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
    );

Map<String, dynamic> _$DefinitionResponseToJson(DefinitionResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'text': instance.text,
      'word': instance.word,
    };
