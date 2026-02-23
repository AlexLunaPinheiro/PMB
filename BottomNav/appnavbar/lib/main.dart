import 'package:appnavbar/tela1.dart';
import 'package:appnavbar/tela2.dart';
import 'package:appnavbar/tela3.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  //Aqui vai a lógica
  List<Widget> telas = [Tela1(), Tela2(), Tela3()];

  int index_atual = 0;

  void mudar_index(int novo_index){
    setState(() {
      index_atual = novo_index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[index_atual],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Ionicons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Ionicons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Ionicons.add), label: "Add")
      ],
      currentIndex: index_atual,
      onTap: mudar_index,
      
      ),
    );
  }
}