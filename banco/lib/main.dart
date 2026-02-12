import 'package:banco/screens/Home.dart';
import 'package:banco/screens/Pix.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Classe centralizadora, permite navegação
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}



