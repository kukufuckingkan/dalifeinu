import 'package:audioplayers/audioplayers.dart';
import 'package:dalifeinnou_ui/controller/audio_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AudioWidget extends ConsumerWidget {
  late final AudioPlayer player;
  final String sku;

  AudioWidget({super.key, required this.sku}){
    player = AudioPlayer();
  }

 
  @override
  Widget build(context,ref) {
     var url = ref.read(audioController.notifier).getUrl(sku);
    return ElevatedButton(
      onPressed: () async {
        await player.play(url);
        },
      child: Text('Play Sound'),
    );
  }
}