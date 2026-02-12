import 'package:banco/components/NavBar.dart';
import 'package:banco/main.dart';
import 'package:banco/screens/Home.dart';
import 'package:flutter/material.dart';

class Pix extends StatelessWidget {
  const Pix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Plataforma banco - pix")),
      body: Column(
        children: [
          NavBar()
        ],
      )
    );
  }
}