import 'package:dalifeinnou_ui/response/language_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'translation_response.g.dart';

@JsonSerializable(includeIfNull: true)
class TranslationResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String text;
  final LanguageResponse language;

  @JsonKey(includeIfNull: true,defaultValue: '')
  final String sound;
  final List<String> image;

  TranslationResponse({
   required this.sku,
    required this.createDate,
   required this.updateDate,
   required this.version,
   required this.text,
   required this.language,
   required this.sound,
   required this.image,
  });

  factory TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationResponseToJson(this);
}