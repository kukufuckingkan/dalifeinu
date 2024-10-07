// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoundResponse _$SoundResponseFromJson(Map<String, dynamic> json) =>
    SoundResponse(
      sku: json['sku'] as String?,
      ordinal: (json['ordinal'] as num?)?.toDouble(),
      createDate: json['createDate'] == null
          ? null
          : DateTime.parse(json['createDate'] as String),
      updateDate: json['updateDate'] == null
          ? null
          : DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num?)?.toInt(),
      language: json['language'] == null
          ? null
          : LanguageResponse.fromJson(json['language'] as Map<String, dynamic>),
      path: json['path'] as String?,
      fileId: (json['fileId'] as num?)?.toDouble(),
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
    );

Map<String, dynamic> _$SoundResponseToJson(SoundResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'ordinal': instance.ordinal,
      'createDate': instance.createDate?.toIso8601String(),
      'updateDate': instance.updateDate?.toIso8601String(),
      'version': instance.version,
      'path': instance.path,
      'fileId': instance.fileId,
      'language': instance.language,
      'type': instance.type,
      'subtype': instance.subtype,
    };
