
import 'package:audioplayers/audioplayers.dart';
import 'package:dalifeinnou_ui/controller/audio_state.dart';
import 'package:dalifeinnou_ui/response/sound_response.dart';
import 'package:dalifeinnou_ui/service/audio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';


class AudioController extends StateNotifier<AudioState> {
  final Ref ref;

   AudioController(this.ref) : super(AudioState.initial());

 Future<SoundResponse>  getSound(String sku) async{
  var response = ref.read(audioService).fetchBySku(sku);
  return response;
 }
}

final audioController = StateNotifierProvider<AudioController, AudioState>((ref) {
  return AudioController(ref);
});