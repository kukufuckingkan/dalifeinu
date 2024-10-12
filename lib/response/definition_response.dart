
import 'package:json_annotation/json_annotation.dart';


part 'definition_response.g.dart';

@JsonSerializable()
class DefinitionResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String text;
  final String word;



  DefinitionResponse({
    required this.text,
    required this.word,
   required this.sku,
   required this.createDate,
   required this.updateDate,
   required this.version
  });

  factory DefinitionResponse.fromJson(Map<String, dynamic> json) => _$DefinitionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DefinitionResponseToJson(this);
}