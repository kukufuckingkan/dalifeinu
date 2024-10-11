import 'package:dalifeinnou_ui/response/translation_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'word_response.g.dart';

@JsonSerializable(includeIfNull: true)
class WordResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final List<TranslationResponse> translation;


  WordResponse({
   required this.sku,
   required this.createDate,
   required this.updateDate,
   required this.version,
   required this.translation,
  });

  factory WordResponse.fromJson(Map<String, dynamic> json) => _$WordResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WordResponseToJson(this);
}