import 'package:dalifeinnou_ui/response/translation_response.dart';
import 'package:dalifeinnou_ui/response/word_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';
import '../response/sound_response.dart';



part 'audio_api.g.dart';

class EndPoint {
      static const fetchbyText = "/word/text/ߊ";
      static const fetchAll = "/word";
       static const findBySku = "/audio/sku{sku}";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class AudioApi {

  factory AudioApi(Dio dio, {String baseUrl}) =
      _AudioApi;


  @GET(EndPoint.findBySku)
  Future<SoundResponse> findBySku(@Path("sku") String sku);
}


final audioApi = Provider<AudioApi>((ref) {
  var url = appProperties['WARA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return AudioApi(Dio(), baseUrl: url);
});
