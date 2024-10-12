// // ignore_for_file: prefer_const_constructors_in_immutables

// import 'package:dalifeinnou_ui/response/translation_response.dart';
// import 'package:dalifeinnou_ui/response/word_response.dart';
// import 'package:dalifeinnou_ui/ui/widget/translation_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class WordWidget extends ConsumerWidget {
//   final TranslationResponse translation;

//   WordWidget({super.key, required this.translation});

// @override
// @override
// Widget build(BuildContext context, WidgetRef ref) {
//   return SingleChildScrollView(
//     child: Card(
//         child: ListView.separated(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: word.translation.length,
//           separatorBuilder: (BuildContext context, int index) => const Divider(),
//           itemBuilder: (BuildContext context, int index) {
//             return TranslationWidget(translation: translation);
//           },
//         ),
//       ),
//   );
// }
// }
