import 'package:coffe_shop/components/CustomButton.dart';
import 'package:coffe_shop/components/basescaffold.dart';
import 'package:coffe_shop/screens/home.dart';
import 'package:flutter/material.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Basescaffold(
      titulo: "Bem vindo!", 
      body: Center(
        child: Column(
          children: [
            Text("Clique aqui para ver nossos produtos"),
            Custombutton(pagina: Home(), titulo: "home"),
          ],
        ),
      )
      );
  }
}