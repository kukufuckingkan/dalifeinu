import 'dart:convert';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:dalifeinnou_ui/controller/audio_controller.dart';
import 'package:dalifeinnou_ui/response/sound_response.dart';
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

   return FutureBuilder(initialData: SoundResponse.fromJson({}),
    future: ref.read(audioController.notifier).getSound(sku),
     builder: (BuildContext context, AsyncSnapshot<SoundResponse> snapshot) { 
      if(snapshot.hasData && snapshot.data != null){
        var soundByte = Uint8List.fromList(utf8.encode(snapshot.data!.data));
      return ElevatedButton.icon(
        onPressed: () async {
        var source = BytesSource(soundByte);
        await player.play(source);
      },
      icon: Icon(Icons.play_circle_fill),
       label: Text('player'));
      }
      else{
        return Text("no sound");
      }
      } ,
    );
  }
}