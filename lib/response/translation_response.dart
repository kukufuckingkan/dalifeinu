import 'package:dalifeinnou_ui/response/definition_response.dart';
import 'package:dalifeinnou_ui/response/language_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'translation_response.g.dart';

@JsonSerializable(includeIfNull: true, ignoreUnannotated: false)
class TranslationResponse {
  @JsonKey(includeIfNull: true,defaultValue: '')
  final String root;
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String text;
  final LanguageResponse language;
  final List<DefinitionResponse> definitions;
  final String word;

  @JsonKey(includeIfNull: true,defaultValue: '')
  final String sound;
  //final List<String> image;

  TranslationResponse({
    required this.definitions,
   required this.root,
   required this.sku,
    required this.createDate,
   required this.updateDate,
   required this.version,
   required this.text,
   required this.language,
   required this.sound,
   //required this.image,
   required this.word
  });

  factory TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationResponseToJson(this);
}