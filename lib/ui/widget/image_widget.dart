import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalifeinnou_ui/controller/image_controller.dart';
import 'package:dalifeinnou_ui/response/image_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageWidget extends ConsumerWidget {
  final String sku;
  const ImageWidget(this.sku, {super.key});

  @override
  Widget build(context, ref) {
     var url = ref.read(imageController.notifier).getUrl(sku);
     return Expanded(child: Image.network(url,height: 70, width: 70,));
  }
}
