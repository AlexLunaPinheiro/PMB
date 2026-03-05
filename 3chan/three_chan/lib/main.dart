import 'package:flutter/material.dart';
import 'package:three_chan/screens/inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial()

    );
  }
}