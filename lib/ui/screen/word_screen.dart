// import 'dart:developer';

// import 'package:dalifeinnou_ui/controller/translation_controller.dart';
// import 'package:dalifeinnou_ui/ui/widget/word_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../model/indicator.dart';
// import '../widget/translation_widget.dart';

// class TranslationScreen extends ConsumerWidget {
//   const TranslationScreen({super.key});
  

   

//    @override
//   Widget build(context, ref) {
//     var nko = "ߒߞߏ";
//     Future.microtask(() => {
//       ref.read(wordController.notifier).fetchAllByLanguage(nko)
//       });

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Flexible(
//           child: Consumer(builder: (ctx, ref, child) {
//             var state =
//                 ref.watch(wordController.select((value) => value));
//             var translations = state.translations;
//             var fetching = state.fetching;
//             var data = state.data;

//              if (fetching) {
//               return circularProgress();
//             }
//             else{
//               var itemCount = translations.length;
//           return ListView.builder(
//               itemCount: itemCount, // Number of posts
//               itemBuilder: (context, index) {
//                 var translation =  translations[index];
//                 log("count of words found is $itemCount");
//                 return TranslationWidget(translation: translation ,);
//               },
//             );
//             }

//           }),
//         )
//       ],
//     );
//   }
// }