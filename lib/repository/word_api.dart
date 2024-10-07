import 'package:dalifeinnou_ui/response/word_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';



part 'word_api.g.dart';

class EndPoint {
      static const fetchbyText = "/word/text/ߊ";
      static const fetchAll = "/word";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class WordApi {

  factory WordApi(Dio dio, {String baseUrl}) =
      _WordApi;


  @GET(EndPoint.fetchAll)
  Future<List<WordResponse>> fetchAll();
}


final wordApi = Provider<WordApi>((ref) {
  var url = appProperties['NOUKOUNKE_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return WordApi(Dio(), baseUrl: url);
});
