import 'package:json_annotation/json_annotation.dart';

import 'language_response.dart';

part 'sound_response.g.dart';

@JsonSerializable()
class SoundResponse {
  // @JsonValue(200)
  final String sku;
  final double ordinal;
  final DateTime? createDate;
  final DateTime? updateDate;
  final int? version;
  final String? path;
  final double? fileId;
  final LanguageResponse? language;
  final String? type;
  final String? subtype;

  SoundResponse({
   required this.sku,
   required this.ordinal,
    this.createDate,
    this.updateDate,
    this.version,
    this.language,
    this.path,
    this.fileId,
    this.type,
    this.subtype,
  });

  factory SoundResponse.fromJson(Map<String, dynamic> json) => _$SoundResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SoundResponseToJson(this);
}