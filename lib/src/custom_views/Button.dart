import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// CLASE BUTTON TIENE DE FONDO UNA IMAGEN

class button1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialButton(
     padding: EdgeInsets.all(0.0),
     splashColor: Colors.red,
     elevation: 8.0,
     child: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage('assets/spain.png'),
             fit: BoxFit.cover),
       ),
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Text("PINCHA SI QUIERES QUE GANE ESPAÑA EL MUNDIAL",style: TextStyle(color: Colors.black,),),
       ),
     ),
     // ),
     onPressed: () {
       print('HE SIDO PULSADO');
       launch("https://www.youtube.com/watch?v=g7f6pHtis4o");
     },
   );
  }




}