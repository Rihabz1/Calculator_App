import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Calc(),
    );
  }
}
