// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoundResponse _$SoundResponseFromJson(Map<String, dynamic> json) =>
    SoundResponse(
      data: json['data'] as String,
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
    );

Map<String, dynamic> _$SoundResponseToJson(SoundResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'data': instance.data,
    };
