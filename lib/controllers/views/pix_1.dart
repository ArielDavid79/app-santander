import 'package:flutter/material.dart';

class Pix1 extends StatefulWidget {
  const Pix1({super.key});

  @override
  State<Pix1> createState() => _Pix1State();
}

class _Pix1State extends State<Pix1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
     AppBar(
      title: Text,
      backgroundColor: Color.fromARGB(255,236,9,0),
    ),
    body: Padding(
      child: Column(
        children: [

          Text(
            "para quem vc vai transferi" 
            style: TextStyle()
          
          )TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText:( "nome,chave pix copie e  cola")

            )
            
                ),


        ],
      
      ),
    )
  );
  }
}