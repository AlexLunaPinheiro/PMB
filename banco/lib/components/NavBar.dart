import 'package:banco/screens/Boleto.dart';
import 'package:banco/screens/Cartao.dart';
import 'package:banco/screens/Home.dart';
import 'package:banco/screens/Pix.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => Home()));
            }, 
            child: Text("Home", style: TextStyle(color: Colors.white),), style: TextButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              fixedSize: const Size(100, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              )
            ),),


            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Pix()));
            }, child: Text("Pix")),


            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Boleto()));
            }, child: Text("Boleto")),


            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cartao()));
            }, child: Text("Cartão")),
          ],
        );
  }
}

