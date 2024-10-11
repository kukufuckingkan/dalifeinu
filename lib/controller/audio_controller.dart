
import 'package:audioplayers/audioplayers.dart';
import 'package:dalifeinnou_ui/controller/audio_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';


class AudioController extends StateNotifier<AudioState> {
  final Ref ref;

   AudioController(this.ref) : super(AudioState.initial());

 UrlSource  getUrl(String sku){
   var base = appProperties['WARA_BASE_URL'];
   var path = "/sound/sku/$sku";
  var url = base + path;
  return UrlSource(url);
 }
}

final audioController = StateNotifierProvider<AudioController, AudioState>((ref) {
  return AudioController(ref);
});