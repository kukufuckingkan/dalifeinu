
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_state.freezed.dart';

@freezed
abstract class AudioState with _$AudioState{
    factory AudioState() = _AudioState;

  factory  AudioState.initial(){
    return AudioState();
  }
}