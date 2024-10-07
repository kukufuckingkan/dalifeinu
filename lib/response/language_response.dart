import 'package:json_annotation/json_annotation.dart';
part 'language_response.g.dart';

@JsonSerializable()
class LanguageResponse {
  final String? sku;
  final double? ordinal;
  final DateTime? createDate;
  final DateTime? updateDate;
  final int? version;

  LanguageResponse({
    this.sku,
    this.ordinal,
    this.createDate,
    this.updateDate,
    this.version,
  });

  factory LanguageResponse.fromJson(Map<String, dynamic> json) => _$LanguageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageResponseToJson(this);
}