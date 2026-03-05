
import 'package:flutter/material.dart';

class Navigationbutton extends StatelessWidget {
  String texto;
  StatelessWidget tela;
  bool Function()? funcao;
  Navigationbutton({super.key, required this.texto, required this.tela, this.funcao});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                    onPressed: () {

                      bool podeNavegar = true;

                      if (funcao != null){
                        podeNavegar = funcao!();
                      }

                      if(podeNavegar){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> tela));
                      }
                    //   print(funcao);
                      
                    //   if(funcao == null){
                    //     Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => tela,
                    //     ),
                    //   );
                    //   }
                    
                    // if(funcao == true){
                        
                    //     Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => tela,
                    //     )
                        
                    //   );
                    //   }                   
                    },
                      
                    // },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 40),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DMSans',
                      ),
                    ),
                    child: Text(texto),
                  );
  }
}