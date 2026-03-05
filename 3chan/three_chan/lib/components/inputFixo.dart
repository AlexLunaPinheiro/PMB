import 'package:flutter/material.dart';

class Inputfixo extends StatelessWidget {
  const Inputfixo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "digite um numero",
        border: OutlineInputBorder(),
      ),
    );
  }
}