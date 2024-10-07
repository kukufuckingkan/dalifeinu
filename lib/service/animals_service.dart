import 'dart:io';

import 'package:dalifeinnou_ui/repository/animal_api.dart';
import 'package:dalifeinnou_ui/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimalsService {
  final Ref ref;

  AnimalsService(this.ref);

  Future<dynamic> fetchAll() async {
    try {
      
      var response = await ref.read(animalsApi).fetchAll();
      return response;
    } on DioException catch (e) {
      throw Exception(e);
    } on SocketException catch (e) {
      throw Exception(e);
    }
  }


    Future<dynamic> findPictureBySku(String sku) async {
    try {
      
      var response = await ref.read(animalsApi).findPicture(sku);
      return response;
    } on DioException catch (e) {
      throw Exception(e);
    } on SocketException catch (e) {
      throw Exception(e);
    }
  }

      String findPicture(String sku)  {
    try {
      var base = appProperties['NOUKOUNKE_BASE_URL'];
      var url = base+"/animals/" + sku + "/picture";
      
      return url;
    } on DioException catch (e) {
      throw Exception(e);
    } on SocketException catch (e) {
      throw Exception(e);
    }
  }
}

final animalsService =
    Provider<AnimalsService>((ref) => AnimalsService(ref));
