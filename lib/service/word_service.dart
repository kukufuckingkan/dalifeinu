import 'dart:developer';
import 'dart:io';

import 'package:dalifeinnou_ui/repository/word_api.dart';
import 'package:dalifeinnou_ui/response/translation_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordService {
  final Ref ref;

  WordService(this.ref);

    Future<List<TranslationResponse>> fetchAllByLanguge(String language) async {
    try {
      var response = await ref.read(wordApi).fetchAllByLanguage(language);
      return response;
    } on DioException catch (e) {
          log(e.toString());
      throw Exception(e);
    } on SocketException catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

}

final wordService =
    Provider<WordService>((ref) => WordService(ref));
