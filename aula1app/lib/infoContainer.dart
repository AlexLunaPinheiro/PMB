import 'package:flutter/material.dart';

class Infocontainer extends StatelessWidget{
  const Infocontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                width: 500, 
                height: 200, 
                color: Colors.amber, 
                //margin: EdgeInsets.only(left: 10)
                ),
              
              SizedBox(height: 10,),
              
              Container(
                width: 500, 
                height: 200, 
                color: Colors.green, 
                child: Center(
                  child: Text("alo administrado", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                    ))), 
                alignment: Alignment.centerLeft),
            ],
            
          
      );//Prove componentes para a tela
}
}