import 'dart:developer';
import 'dart:io';

import 'package:dalifeinnou_ui/repository/word_api.dart';
import 'package:dalifeinnou_ui/response/word_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordService {
  final Ref ref;

  WordService(this.ref);

  Future<List<WordResponse>> fetchAll() async {
    try {
      var response = await ref.read(wordApi).fetchAll();
      return response;
    } on DioException catch (e) {
          log(e.toString());
      throw Exception(e);
    } on SocketException catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }


  //   Future<dynamic> findPictureBySku(String sku) async {
  //   try {
      
  //     var response = await ref.read(wordApi).findPicture(sku);
  //     return response;
  //   } on DioException catch (e) {
  //     throw Exception(e);
  //   } on SocketException catch (e) {
  //     throw Exception(e);
  //   }
  // }

  //     String findPicture(String sku)  {
  //   try {
  //     var base = appProperties['NOUKOUNKE_BASE_URL'];
  //     var url = base+"/animals/" + sku + "/picture";
      
  //     return url;
  //   } on DioException catch (e) {
  //     throw Exception(e);
  //   } on SocketException catch (e) {
  //     throw Exception(e);
  //   }
  // }
}

final wordService =
    Provider<WordService>((ref) => WordService(ref));
