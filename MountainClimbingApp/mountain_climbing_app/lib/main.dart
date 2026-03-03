import 'package:flutter/material.dart';
import 'package:mountain_climbing_app/Home.dart';
import 'package:mountain_climbing_app/Register.dart';
import 'package:mountain_climbing_app/login.dart';
import 'package:mountain_climbing_app/onBoarding.dart';
import 'package:mountain_climbing_app/onBoarding2.dart';
import 'package:mountain_climbing_app/welcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'DMSans',

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFA11515)),
      ),
      home: WelcomePage(),
    );
  }
}
