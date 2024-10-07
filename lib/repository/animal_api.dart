import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../main.dart';


part 'animal_api.g.dart';

class Apis {
  static const fetchAll = "/word";
  static const picture = "/animals/{sku}/picture";
  static const authenticate = "/authn";
  static const fetchbyText = "/word/text/{}";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class AnimalApi {
  factory AnimalApi(Dio dio, {String baseUrl}) =
      _AnimalApi;


  @GET(Apis.fetchAll)
  Future<dynamic> fetchAll();

  @GET(Apis.picture)
  Future<dynamic> findPicture(@Path('sku') String sku);
}


final animalsApi = Provider<AnimalApi>((ref) {
  var url = appProperties['NOUKOUNKE_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return AnimalApi(Dio(), baseUrl: url);
});
