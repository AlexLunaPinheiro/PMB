import 'package:flutter/material.dart';
import 'package:mountain_climbing_app/welcomePage.dart';

void main() {
  runApp( MyApp());
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



