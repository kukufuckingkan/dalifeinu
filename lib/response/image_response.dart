import 'package:json_annotation/json_annotation.dart';


part 'image_response.g.dart';

@JsonSerializable()
class ImageResponse {
  // @JsonValue(200)
  final String sku;
  final double ordinal;
  final int? version;

  ImageResponse( {
   required this.sku,
   required this.ordinal,
    this.version,
  });

  factory ImageResponse.fromJson(Map<String, dynamic> json) => _$ImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);
}
