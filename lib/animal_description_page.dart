import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimalDescriptionPage extends ConsumerWidget {
  final String sku;
   const AnimalDescriptionPage(this.sku, {super.key});

  @override
  Widget build(context,ref) {
    return Text(sku);
  }
}