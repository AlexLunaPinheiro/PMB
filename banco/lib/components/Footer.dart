import 'package:banco/components/Button.dart';
import 'package:banco/screens/Boleto.dart';
import 'package:banco/screens/Cartao.dart';
import 'package:banco/screens/Home.dart';
import 'package:banco/screens/Pix.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int index;
  const Footer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    
    return Center(
      child: Container(
      
      width: screenWidth * 0.9,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF222428), 
        borderRadius: BorderRadius.circular(40)
      ),
      
      child: 
        Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonNav(label: "Home", isActive: index == 1, onPressed: () => Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (_) => const Home()),
              )),
            ButtonNav(label: "Pix", isActive: index == 2, onPressed: () => Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (_) => const Pix()),
              )),
            ButtonNav(label: "Boleto", isActive: index == 3, onPressed: () => Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (_) => const Boleto()),
              )),
            ButtonNav(label: "Cartão", isActive: index == 4, onPressed: () => Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (_) => const Cartao()),
              )),
          ],
        
        )
      ,
    ),
    );
    
    
  }
}

