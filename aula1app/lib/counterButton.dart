import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  final String label;

  const CounterButton({super.key, required this.label});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => setState(() => count++),

    
     child: Text('${widget.label}: $count'));
  }
}