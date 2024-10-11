
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.freezed.dart';

@freezed
abstract class ImageState with _$ImageState{
    factory ImageState() = _ImageState;

  factory  ImageState.initial(){
    return ImageState();
  }
}