import 'package:flutter/material.dart';
import 'package:quiz/screen1/screen_one.dart';
import 'package:quiz/screen2/screen_two.dart';
import 'package:quiz/screen3/screen_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
debugShowCheckedModeBanner: false,
      home:  ScreenThree(),
      //ScreenOne()
      //ScreenTwo()

    );
  }
}

