
import 'dart:developer';

import 'package:dalifeinnou_ui/controller/translation_state.dart';
import 'package:dalifeinnou_ui/service/word_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class TranslationController extends StateNotifier<TranslationState> {
  final Ref ref;

   TranslationController(this.ref) : super(TranslationState.initial());

    Future<void> fetchAllByLanguage(String language) async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(wordService).fetchAllByLanguge(language);
      state = state.copyWith(fetching: false,translations: response);
    } on Exception catch (e) {
       log(e.toString());
      state = state.copyWith(fetching: false, error : e.toString());
    }
  }
}

final translationController = StateNotifierProvider<TranslationController, TranslationState>((ref) {
  return TranslationController(ref);
});
