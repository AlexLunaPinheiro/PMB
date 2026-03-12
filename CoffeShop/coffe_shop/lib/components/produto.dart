import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  String nome;
  String imagem;
  double valor;
  Produto({super.key, required this.nome, required this.imagem, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 177, 136, 121),
        border: Border.all(),
        borderRadius: BorderRadius.circular(20)
      ),
      width: 250,
      height: 100,
      child: Row(
        children: [
          ClipRect(
            child: Image.network(imagem, width: 150),
          ),
          Column(
            children: [
              Text(nome),
              Text("R\$ $valor")
            ],
          )
        ],
      ),
    );
  }
}