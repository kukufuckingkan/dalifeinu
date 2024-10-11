// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:dalifeinnou_ui/response/translation_response.dart';
import 'package:dalifeinnou_ui/service/animals_service.dart';
import 'package:dalifeinnou_ui/ui/widget/audio_widget.dart';
import 'package:dalifeinnou_ui/ui/widget/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TranslationWidget extends ConsumerWidget {
  final TranslationResponse translation;

  TranslationWidget({super.key, required this.translation});

  @override
  Widget build(context, ref) {
    var sound = translation.sound;
    var images = translation.image;
    var language = translation.language;
    var hasSound = sound.isNotEmpty;
    var hasImage = images.length > 0;

    return Consumer(builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: hasSound,
                  child: AudioWidget(sku: sound),
                ),
                Text(translation.text),
                Text(language.text),
              ],
            )
          ],
        ),
      );
    });
  }
}
