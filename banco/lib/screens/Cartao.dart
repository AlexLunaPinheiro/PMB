import 'package:banco/components/NavBar.dart';
import 'package:banco/main.dart';
import 'package:banco/screens/Home.dart';
import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  const Cartao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Plataforma banco - cartao")),
      body: Column(
        children: [
          NavBar()
        ],
      )
    );
  }
}