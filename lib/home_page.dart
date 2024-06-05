
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import 'app_bar.dart';
import 'user_account_drawer.dart';


class HomePage extends ConsumerWidget {
  final Widget child;

  const HomePage(this.child, {super.key});
   
  @override
  Widget build( context,ref) {
    return Scaffold(body: child,
    appBar: const KulkulkanAppBar(preferredSize: Size.fromHeight(100), child: Text('Hello'),),
    drawer: const KulkulkanAccountDrawer(),


 bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,     
          onTap: (index) {
            switch (index) {
              case 0:
                GoRouter.of(context).go('/');
                break;
              case 1:
                GoRouter.of(context).go('/eventsCreated');
                break;
              case 2:
                GoRouter.of(context).go('/community');
                break;

              case 3:
                GoRouter.of(context).go('/matches');
                break;
              default:
                GoRouter.of(context).go('/');
            }
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.black54,
              icon: Icon(Icons.all_inclusive_sharp),
              label: 'Animals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.earth),
              label: 'Land',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black54,
              icon: Icon(Icons.water),
              label: 'Sea',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.air),
              label: 'Air',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
             BottomNavigationBarItem(
              icon: Icon(Ionicons.bookmark),
              label: 'BookMark',
            )
          ],
        ),
    );
  }
}