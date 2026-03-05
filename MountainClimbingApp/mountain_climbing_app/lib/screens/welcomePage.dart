import 'package:flutter/material.dart';
import 'package:mountain_climbing_app/components/navigationButton.dart';
import 'package:mountain_climbing_app/screens/onBoarding.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1725714833237-f16447366ae7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8YmxhY2slMjBiYWdyb3VuZHxlbnwwfHx8fDE3NzIxMjQyNjR8MA&ixlib=rb-4.1.0&q=80&w=1080',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/logo.png', height: 120),

              Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 20,
                children: [
                  Column(
                    children: [
                      Text(
                        'Bem vindo',
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Sua viagem começa aqui',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9f9f9f),
                        ),
                      ),
                    ],
                  ),
                  Navigationbutton(tela: Onboarding(), texto: "Começar",),
                  Text(
                    'O melhor serviço vem daqui',
                    style: TextStyle(color: Color(0xFFc3c3c3)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
