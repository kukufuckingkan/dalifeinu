import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yaml/yaml.dart';

import 'application_router.dart';

Future<void> main() async {
  // pass env as command line args
  WidgetsFlutterBinding.ensureInitialized();

//const String activeProfile = String.fromEnvironment('ACTIVE_PROFILE', defaultValue: 'local');
   
await AppProfileConfig.load('dev');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

   @override
  Widget build( context,ref) {
    var router = ref.watch(appRouter);
    return  MaterialApp.router(
   debugShowCheckedModeBanner: false,
      title: 'Dalifeinnou',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
      
    );
  }
}


  Map<String, dynamic> appProperties = {};
 class AppProfileConfig {
    static Future<Map<String, dynamic>> load(String activeProfile) async {
    log("the active profile is : $activeProfile");
    String configFile = 'profiles/application_$activeProfile.yaml';
    String yamlString = await rootBundle.loadString(configFile);
    var yaml = loadYaml(yamlString);
    var res = Map<String, dynamic>.from(yaml);
    appProperties = res;
    return res;
    }
 }
