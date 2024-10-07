// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageResponse _$LanguageResponseFromJson(Map<String, dynamic> json) =>
    LanguageResponse(
      sku: json['sku'] as String?,
      ordinal: (json['ordinal'] as num?)?.toDouble(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LanguageResponseToJson(LanguageResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'ordinal': instance.ordinal,
      'createDate': instance.createDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'version': instance.version,
    };
