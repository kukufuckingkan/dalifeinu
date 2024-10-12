import 'package:dalifeinnou_ui/controller/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widget/translation_widget.dart';

class TranslationScreen extends ConsumerWidget {
  const TranslationScreen({super.key});

  @override
  Widget build(context, ref) {
    var nko = "ߒߞߏ";
    Future.microtask(() =>
        {ref.read(translationController.notifier).fetchAllByLanguage(nko)});

    return Column(
      children: [
        Flexible(child: Consumer(builder: (_, ref, __) {
          var state = ref.watch(translationController.select((value) => value));

          if (state.fetching) {
            return CircularProgressIndicator();
          }
          if (state.error.isNotEmpty) {
            return Text(state.error);
          }
          var translations = state.translations;
          return ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: translations.length,
            itemBuilder: (context, index) {
              var translation = translations[index];
              return TranslationWidget(translation: translation);
            },
          );
        }))
      ],
    );
  }
}
