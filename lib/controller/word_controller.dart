
import 'dart:developer';

import 'package:dalifeinnou_ui/controller/word_state.dart';
import 'package:dalifeinnou_ui/service/word_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class WordController extends StateNotifier<WordState> {
  final Ref ref;

   WordController(this.ref) : super(WordState.initial());

  Future<Either<String, String>> fetchAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(wordService).fetchAll();
      state = state.copyWith(fetching: false, data: true, words: response);
      return Right("ok");
    } on Exception catch (e) {
      state = state.copyWith(fetching: false,data: false);
      log(e.toString());
      return Left(e.toString());
    }
  }
}

final wordController = StateNotifierProvider<WordController, WordState>((ref) {
  return WordController(ref);
});
