
import 'package:flutter/material.dart';

class Basescaffold extends StatelessWidget {
  final String titulo;
  final Widget body;
  Basescaffold({super.key, required this.titulo, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo, style: TextStyle(color: Colors.white, fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: body,
    );
  }
}