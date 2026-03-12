import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  String titulo;
  Widget pagina;
  Custombutton({super.key, required this.pagina, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:  (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> pagina));
      }, 
      child: Text(titulo), 
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        side: BorderSide(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20)
        ),
        fixedSize: Size(150, 30)
    ),);
}
}