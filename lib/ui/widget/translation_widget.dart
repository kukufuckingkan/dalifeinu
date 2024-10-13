// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:dalifeinnou_ui/response/translation_response.dart';
import 'package:dalifeinnou_ui/ui/widget/audio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'definition_wiget.dart';

class TranslationWidget extends ConsumerWidget {
  final TranslationResponse translation;

  TranslationWidget({super.key, required this.translation});

  @override
  Widget build(context, ref) {
    var sound = translation.sound;

    return Consumer(builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              AudioWidget(sku: sound),
                            ],
                          ),
                        ),
                       // ImageWidget(translation.word),
                                 Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                             DefinitionWiget(sku: '',definitions: translation.definitions,),
                            ],
                          ),
                        ),
                        Expanded(
                           flex: 1,
                          child: Column(
                            children: [
                              Text(translation.text),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
