import 'package:flutter/material.dart';

void main() {
  runApp(const AplicacaoContador());
}

class AplicacaoContador extends StatefulWidget { //Qunado a tela inicializa
  const AplicacaoContador({super.key});

  @override
  State<AplicacaoContador> createState() =>  _AplicacaoContadorState();
}

//O que acontece dentro dela 
class _AplicacaoContadorState extends State<AplicacaoContador> {

  int contador = 0;
  
  void add() {
    setState(() {
      contador++;
    });
  }

  void sub() {
    setState(() {
      if (contador > 0){
        contador--;
      }
      
    });
  }

  void reset() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      

    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Contador", style: TextStyle(color: Colors.white),), centerTitle: true,
    //       backgroundColor: Colors.blueGrey,
    //       toolbarHeight: 30,
          
    //     ),

    //     body: ListView(

    //         children: [
    //             Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 children: [
    //                     Text(contador.toString(),style: TextStyle(fontSize: 32),),
    //                     SizedBox(height: 30,),
    //                     Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            
                            
    //                         children: [
    //                             ElevatedButton(onPressed: add, child: const Text("somar"), style: ElevatedButton.styleFrom(//backgroundColor: Colors.red
    //                             )),
    //                             ElevatedButton(onPressed: sub, child: const Text("subtrair")),
    //                             ElevatedButton(onPressed: reset, child: const Text("resetar"))
    //                             //TextButton
    //                         ],
    //                     )
    //                 ],
    //             )
                
    //         ],
    //     )

    //   )
      
    // );

    home: Column(
      children: [
        Container(
          child: Image.network("asda"),
        ),
        Text("Nome do usuario"),
        Stack(
          children: [
            Container(
              
              child: Image.network("", ),
            )
          ],
        )
      ],
    )
    );
  }
}