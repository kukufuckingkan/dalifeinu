
// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'local_storage_state.dart';


// final localStorageController =
//     Provider<LocalStorageController>((ref) => LocalStorageController(ref));

// class LocalStorageController extends StateNotifier<void> {
//   final Ref ref;
//   Dio get dioClient => state.dioClient;

 

//   LocalStorageController(this.ref) : super(null) {
//     var client = Dio(BaseOptions(
//       connectTimeout: const Duration(milliseconds: 45000),
//       receiveTimeout: const Duration(milliseconds: 45000),
//     ));
//     var interceptor = getAuthInterceptor();
//     client.interceptors.add(interceptor);
  
//   }

//   InterceptorsWrapper getAuthInterceptor() {
//     return InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         // Check if the endpoint requires authentication
//         // final bool requiresToken = _checkIfRequiresToken(options);
//         final token = ref.read(sharedPrefs).maybeWhen(
//               data: (value) => value.getString('jwt_token'),
//               orElse: () => '',
//             );

//         options.headers['Authorization'] = token;

//         return handler.next(options);
//       },
//     );
//   }
// }

// final sharedPrefs = FutureProvider<SharedPreferences>((_) async => await SharedPreferences.getInstance());
