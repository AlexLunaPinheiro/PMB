import 'package:flutter/material.dart';
import 'package:three_chan/components/inputFixo.dart';
import 'package:three_chan/components/textoDinamico.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo ao 3Chan!"),
      ),
      body: Center(
        child: Column(
          children: [
            Textofixo(text: "salve salve familia"),
            Textofixo(text: "Virginio Jr", cor: Colors.blueGrey,),
            Inputfixo()
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}