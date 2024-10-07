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
  Widget build(context, ref) {
  
   // var pic = ref.read(animalsService).findPicture(sku);
    return Consumer(builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: GestureDetector(
              onTap: () {
                GoRouter.of(context).
                go('/description', extra: word.sku);
              },
              child: Image.network(""))),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(word.text?? ""),
                //Text(nko['value']),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Text(english['language']),
                Text("definition"),
              ],
            )
          ],
        ),
      );
    });
  }
}
