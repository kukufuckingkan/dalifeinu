import 'package:dalifeinnou_ui/animal_description_page.dart';
import 'package:dalifeinnou_ui/animals_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'home_page.dart';



const routeBase = '/';
const routeHome = '/home';
const routeDescription = '/description';


final GlobalKey<NavigatorState> _appNavigatorKey = GlobalKey<NavigatorState>();
final appRouter = Provider<GoRouter>((ref) {


  return GoRouter(
    navigatorKey: _appNavigatorKey,
    initialLocation: routeBase,
    redirect: (context, state) {
 
      return state.path;
    },
    routes: <RouteBase>[

      GoRoute(
        path: routeBase,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage(AnimalScreen());
        },
      ),

        GoRoute(
        path: routeDescription,
        builder: (BuildContext context, GoRouterState state) {
          final sku  = state.extra! as String;
          return HomePage(AnimalDescriptionPage(sku));
        },
      ),
    
    ],
  );
});
