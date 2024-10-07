import 'package:dalifeinnou_ui/response/language_response.dart';
import 'package:dalifeinnou_ui/response/sound_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'word_response.g.dart';

@JsonSerializable()
class WordResponse {
  final String sku;
  final int ordinal;
  final DateTime? createDate;
  final DateTime? updateDate;
  final int? version;
  final String? definition;
  final String text;
  final LanguageResponse? language;
  final SoundResponse? sound;
  final String? image;

  WordResponse({
   required this.sku,
   required this.ordinal,
    this.createDate,
    this.updateDate,
    this.version,
    this.definition,
   required this.text,
    this.language,
    this.sound,
    this.image,
  });

  factory WordResponse.fromJson(Map<String, dynamic> json) => _$WordResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WordResponseToJson(this);
}