import 'package:flutter/material.dart';
import 'package:mountain_climbing_app/components/loginTextField.dart';
import 'package:mountain_climbing_app/components/navigationButton.dart';
import 'package:mountain_climbing_app/screens/Home.dart';
import 'package:mountain_climbing_app/screens/Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Observa o que foi digitado
  TextEditingController usuario = TextEditingController();
  TextEditingController senha = TextEditingController();

  String usuarioCorreto = "Alex";
  String senhaCorreta = "alex12345";
  


  bool logar(){
    if(usuario.text == usuarioCorreto && senha.text == senhaCorreta){
      return true;
    }
    return false;

  }

  @override
  Widget build(BuildContext context) {
    const altura = double.infinity;
    const largura = double.infinity;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: altura,
                  width: largura,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/fundo_tela_2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: largura,
                  height: altura,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF00000000), Color(0xFF0b0b0b)],
                      stops: [0.0, 1],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/logo.png', height: 100),
                          ],
                        ),
                      ),

                      Column(
                        spacing: 30,

                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Bem vindo de volta',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              spacing: 4,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: largura,
                            height: MediaQuery.of(context).size.height * 0.60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(150),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                top: 20.0,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Email'),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.87,
                                          child: Logintextfield(
                                            observer: usuario
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Senha'),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.87,
                                          child: Logintextfield(
                                            observer: senha
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 40.0,
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            spacing: 30,
                                            children: [
                                              Navigationbutton(texto: "Logar", tela: Home(), funcao: logar),
                                              Navigationbutton(texto: "Registrar-se", tela: Register())
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
