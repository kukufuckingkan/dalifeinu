// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    ImageResponse(
      sku: json['sku'] as String,
      ordinal: (json['ordinal'] as num).toDouble(),
      version: (json['version'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'ordinal': instance.ordinal,
      'version': instance.version,
    };
