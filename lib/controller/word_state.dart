
import 'package:dalifeinnou_ui/response/word_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_state.freezed.dart';

@freezed
abstract class WordState with _$WordState{
    factory WordState({
   required List<WordResponse> words,
    required bool fetching,
    required bool data,
  }) = _WordState;

  factory  WordState.initial(){
    return WordState(fetching: false, data: false, words: []);
  }
}