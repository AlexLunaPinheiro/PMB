import 'package:aula1app/infoContainer.dart';
import 'package:flutter/material.dart';
//exemplo texto, botao, input, etc;

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//Prove componentes para a tela
    

    home: Scaffold(//Divide a tela em até tres partes
      appBar: AppBar(title: Text("tela inicial"),backgroundColor: Colors.blueGrey),
      
      body: Padding(padding: const EdgeInsets.all(13.0), child:
      ListView(
        children: [
          Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Container(  
            width: 600, 
            height: 150, 
            color: Colors.green, 
            child: Text("alo administrado"), 
            alignment: Alignment.center),
          
          SizedBox(height: 10,),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
              
          //     Container(
          //       width: 200, 
          //       height: 200, 
          //       color: Colors.amber, 
          //       //margin: EdgeInsets.only(left: 10)
          //       ),
              
          //     Container(
          //       width: 200, 
          //       height: 200, 
          //       color: Colors.green, 
          //       child: Center(
          //         child: Text("alo administrado", 
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 15,
          //           fontWeight: FontWeight.w700
          //           ))), 
          //       alignment: Alignment.centerLeft),
          //   ],
            
          // ),

          Infocontainer(),

          SizedBox(height: 10,),

          Container(
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_a-bOb5_NErW3eDNJTH_5j6lSL7m5x0GRGQ&s",
             
            ),
            ),
          ),
          

          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              height: 10000,
            ),
          )
          
        ],
      ),
        ],

      )
      
       )
      
      
    ));
  
  }
}
