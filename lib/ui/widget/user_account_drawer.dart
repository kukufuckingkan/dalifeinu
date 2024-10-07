
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




class KulkulkanAccountDrawer extends ConsumerWidget {
  const KulkulkanAccountDrawer({super.key});


  @override
  Widget build(context, ref) {
    // final user =ref.watch(appContoller.select((x) => x.principal));
    // final user = ref.watch(authController.select((x) => x.account));
    // var avatar =
    //     ref.watch(userAssetsController.select((value) => value.avatar));

    // var user = ref.watch(authService.select((value) => value.principal));

    //var account = ref.watch(authController.select((value) => value.account));
    

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            accountEmail:  Text('kulkulkan@gmail.com') ,
            accountName: const Text('Kulkulkan'),
            
            onDetailsPressed: () {
              
            },
            currentAccountPicture: GestureDetector(
                onTap: () async {
                  //ref.read(userAssetsController.notifier).pickAndSaveImage();
                },
                child: const CircleAvatar(backgroundImage: NetworkImage(''))),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              //Navigator.pop(context); // Close the drawer
              // context.go("/settings");
              // ref.context.go("/settings");
              // GoRouter.of(context).go('/settings');

              // TODO: Implement settings navigation logic
            },
          ),
        ],
      ),
    );
  }
}