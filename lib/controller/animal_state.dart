
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_state.freezed.dart';

@freezed
abstract class AnimalState with _$AnimalState{
    factory AnimalState({
   required dynamic animals,
    required bool fetching,
  }) = _AnimalState;

  factory  AnimalState.initial(){
    return AnimalState(fetching: false, animals: null);
  }
}