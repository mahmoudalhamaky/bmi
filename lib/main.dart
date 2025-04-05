import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme:ThemeData.dark().copyWith(
      //  primaryColor:Color(0xff0A2E29)

    ),
      home: const Bmi(),
    );
  }
}

