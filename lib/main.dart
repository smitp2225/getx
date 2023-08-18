import 'package:flutter/material.dart';
import 'package:getx/counter_app_ui.dart';
import 'package:getx/counter_demo/counter_ui.dart';
import 'package:getx/init.controller.dart';

void main() {
  InitController.getAllController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const ControllerDemoApp(),
    );
  }
}
