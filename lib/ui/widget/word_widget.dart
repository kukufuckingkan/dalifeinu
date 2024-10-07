// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:dalifeinnou_ui/response/word_response.dart';
import 'package:dalifeinnou_ui/service/animals_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WordWidget extends ConsumerWidget {
  final WordResponse word;

  WordWidget({super.key, required this.word});


@override
Widget build(BuildContext context, WidgetRef ref) {
  return Consumer(
    builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("image"),// Optional spacing
            Text("sound"),
            Text("definition"),
            Text(word.text),
          ],
        ),
      );
    },
  );
}
}
