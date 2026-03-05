import 'package:flutter/material.dart';

class Textofixo extends StatelessWidget {
  String text;
  Color? cor = Colors.black;
  Textofixo({super.key, required this.text, this.cor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: cor
      ),
      
      );
  }
}