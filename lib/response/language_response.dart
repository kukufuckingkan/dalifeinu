import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'language_response.g.dart';


@JsonSerializable(includeIfNull: true)
class LanguageResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String text;

  LanguageResponse({
    required this.sku,
    required this.text,
    required this.createDate,
    required this.updateDate,
    required this.version,
  });

  factory LanguageResponse.fromJson(Map<String, dynamic> json) => _$LanguageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageResponseToJson(this);
}