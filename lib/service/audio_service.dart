import 'dart:developer';
import 'dart:io';

import 'package:dalifeinnou_ui/repository/audio_api.dart';
import 'package:dalifeinnou_ui/response/sound_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioService {
  final Ref ref;

  AudioService(this.ref);

    Future<SoundResponse> fetchBySku(String sku) async {
    try {
      var response = await ref.read(audioApi).findBySku(sku);
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

final audioService =
    Provider<AudioService>((ref) => AudioService(ref));
