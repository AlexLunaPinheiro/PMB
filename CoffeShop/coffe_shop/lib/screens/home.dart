import 'package:coffe_shop/components/CustomButton.dart';
import 'package:coffe_shop/components/basescaffold.dart';
import 'package:coffe_shop/components/produto.dart';
import 'package:coffe_shop/screens/carrinho.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Basescaffold(
      titulo: "Coffe Shop",
      body: 
      Column(
        spacing: 20,
        children: [
          SizedBox(height: 30,),
          Produto(nome: "Rosquinha", imagem: "https://guiadacozinha.com.br/wp-content/uploads/2019/10/rosquinha-frita-768x619.jpg", valor: 2.34),
          Produto(nome: "Pão de queijo", imagem: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3LAMksh6dnHpKHL5GrcG--HmOfF_rT_lkgQ&s", valor: 1.4),
          Produto(nome: "Café espresso", imagem: "https://upload.wikimedia.org/wikipedia/commons/2/23/Captura_de_Tela_2017-08-30_%C3%A0s_23.42.42.png", valor: 3.34),
          Custombutton(pagina: Carrinho(), titulo: "Carrinho")
        ],
      )
      );
  }
}