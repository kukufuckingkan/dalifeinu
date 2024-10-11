// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageResponse _$LanguageResponseFromJson(Map<String, dynamic> json) =>
    LanguageResponse(
      sku: json['sku'] as String,
      text: json['text'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
    );

Map<String, dynamic> _$LanguageResponseToJson(LanguageResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'text': instance.text,
    };
