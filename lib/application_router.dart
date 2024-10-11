import 'package:dalifeinnou_ui/ui/screen/word_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'ui/home_page.dart';



const routeBase = '/';
const routeHome = '/home';
const routeDescription = '/description';
const routeWord = '/word';
const routeMan = '/man';


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
        path: routeWord,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage(WordScreen());
        },
      ),
      GoRoute(
        path: routeBase,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage(WordScreen());
        },
      ),
    
    ],
  );
});
