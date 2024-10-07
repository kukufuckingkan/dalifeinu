import 'package:dalifeinnou_ui/controller/word_controller.dart';
import 'package:dalifeinnou_ui/ui/widget/word_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/indicator.dart';

class WordScreen extends ConsumerWidget {
  const WordScreen({super.key});

   

   @override
  Widget build(context, ref) {
    Future.microtask(() => {ref.read(wordController.notifier).fetchAll()});

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Consumer(builder: (ctx, ref, child) {
            var state =
                ref.watch(wordController.select((value) => value));
            var words = state.words;
            var fetching = state.fetching;
            var data = state.data;
            // if(! data){
            //     return Text('no data fetched');
            // }
             if (fetching) {
              return circularProgress();
            }
            else{
          return ListView.builder(
              itemCount: words.length, // Number of posts
              itemBuilder: (context, index) {
                var word =  words[index];
                Text("helllo");
                //return Text(word.sku?? '');
                //return WordWidget(word: word);
              },
            );
            }

          }),
        )
      ],
    );
  }
}