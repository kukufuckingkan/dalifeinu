import 'package:dalifeinnou_ui/model/animal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/animals_controller.dart';
import '../../model/indicator.dart';
import '../widget/name_widget.dart';

class AnimalScreen extends ConsumerWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(context, ref) {
    Future.microtask(() => {ref.read(animalsController.notifier).fetchAll()});

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Consumer(builder: (ctx, ref, child) {
            var controller =
                ref.watch(animalsController.select((value) => value));

            if (controller.fetching) {
              return circularProgress();
            }
            var names = controller.animals;
            return ListView.builder(
              itemCount: names?.length, // Number of posts
              itemBuilder: (context, index) {
                var item = names['sku'];
                return Text(names.toString());
                //return NameItem(name: item);
              },
            );
          }),
        )
      ],
    );
  }
}
