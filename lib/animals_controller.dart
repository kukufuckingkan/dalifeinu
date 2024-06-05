
import 'package:dalifeinnou_ui/animals_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'animal_state.dart';


class AnimalController extends StateNotifier<AnimalState> {
  final Ref ref;

   AnimalController(this.ref) : super(AnimalState.initial());

   Future<dynamic> getMainPicture(String sku) async {
    var response = await ref.read(animalsService).findPictureBySku(sku);
    return response;
   }

  Future<Either<String, dynamic>> fetchAll() async {
    try {
      state = state.copyWith(fetching: true);
      var response = await ref.read(animalsService).fetchAll();
      var result = response['payload'];
      state = state.copyWith(fetching: false,animals: result);
      return  Right(result);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}

final animalsController = StateNotifierProvider<AnimalController, AnimalState>((ref) {
  return AnimalController(ref);
});
