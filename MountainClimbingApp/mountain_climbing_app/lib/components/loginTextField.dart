import 'package:flutter/material.dart';

class Logintextfield extends StatelessWidget {
  TextEditingController observer;

  Logintextfield({super.key,  required this.observer});

  @override
  Widget build(BuildContext context) {
    return TextField(
              controller: observer,
              decoration: InputDecoration(
                labelText: 'Digite seu email',
                border: OutlineInputBorder(),
              ),
            );
  }
}