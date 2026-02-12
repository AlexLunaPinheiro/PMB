import 'package:banco/components/NavBar.dart';
import 'package:banco/screens/Boleto.dart';
import 'package:banco/screens/Cartao.dart';
import 'package:banco/screens/Pix.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(title: Text("Plataforma banco"), ),
      body: Column(children: [
        NavBar(),
        SizedBox(height: 300,),
        Container(width: 00, height: 100, child: Text("Bem vindo", style: TextStyle(fontSize: 32),), )

      ],),
    );
  }
}