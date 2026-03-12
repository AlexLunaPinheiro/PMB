import 'package:coffe_shop/screens/TelaInicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 232, 199,187),
        fontFamily: "Junidubaile"
      ),
      home: Telainicial()
    );
  }
}

