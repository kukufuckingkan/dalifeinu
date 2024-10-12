
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import 'image_state.dart';


class ImageController extends StateNotifier<ImageState> {
  final Ref ref;

 ImageController(this.ref) : super(ImageState.initial());

   

 String  getUrl(String sku){
   var base = appProperties['WARA_BASE_URL'];
   var path = "/image/$sku";
  var url = base + path;
  return url;
 }
}

final imageController = StateNotifierProvider<ImageController, ImageState>((ref) {
  return ImageController(ref);
});