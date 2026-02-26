import 'package:flutter/material.dart';

void main() {
  runApp( WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1725714833237-f16447366ae7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8YmxhY2slMjBiYWdyb3VuZHxlbnwwfHx8fDE3NzIxMjQyNjR8MA&ixlib=rb-4.1.0&q=80&w=1080'
          ),
          fit: BoxFit.cover,
          ),
      ),
      child: Column(
        children: [
          // Image(image: AssetImage(''))
        ],
      ),
    );
  }
  }