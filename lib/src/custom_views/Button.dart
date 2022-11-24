import 'package:flutter/material.dart';

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
     },
   );
  }




}