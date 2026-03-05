import 'package:banco/screens/Boleto.dart';
import 'package:banco/screens/Cartao.dart';
import 'package:banco/screens/Home.dart';
import 'package:banco/screens/Pix.dart';
import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const ButtonNav({super.key, required this.label, required this.isActive, required this.onPressed});


 
  @override
  Widget build(BuildContext context) {

    return TextButton(onPressed: onPressed,
    style: TextButton.styleFrom(
      backgroundColor: isActive ? Colors.white : Colors.transparent,
      fixedSize: const Size(80, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
    ),
    child: Text(
      label,
      style: TextStyle(
        color: isActive ? Colors.black : Colors.white,
        fontWeight: isActive ? FontWeight.w600 : FontWeight.w400
      ),
    ),
    );  
    }

}