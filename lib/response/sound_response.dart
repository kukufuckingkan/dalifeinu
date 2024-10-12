import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

import 'language_response.dart';

part 'sound_response.g.dart';

@JsonSerializable()
class SoundResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String data;



  SoundResponse({
    required this.data,
   required this.sku,
   required this.createDate,
   required this.updateDate,
   required this.version
  });

  factory SoundResponse.fromJson(Map<String, dynamic> json) => _$SoundResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SoundResponseToJson(this);
}