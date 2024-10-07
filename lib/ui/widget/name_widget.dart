// ignore_for_file: prefer_const_constructors_in_immutables


import 'package:dalifeinnou_ui/service/animals_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class NameItem extends ConsumerWidget {
  final dynamic name;

  const NameItem({super.key, required this.name});

  @override
  Widget build(context, ref) {
    var names = name['names'];

    var nko = names[0];
    var english = names[1];
    var french = names[2];
    var sku = name['sku'];
    var pic = ref.read(animalsService).findPicture(sku);
    return Consumer(builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: GestureDetector(
              onTap: () {
                GoRouter.of(context).
                go('/description', extra: sku);
              },
              child: Image.network(pic,width: 300,height: 300,))),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nko['language']),
                Text(nko['value']),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(english['language']),
                Text(english['value']),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(french['language']),
                Text(french['value']),
              ],
            ),
          ],
        ),
      );
    });
  }
}
