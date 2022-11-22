import 'package:flutter/material.dart';

class button1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialButton(
     padding: EdgeInsets.all(8.0),
     textColor: Colors.white,
     splashColor: Colors.greenAccent,
     elevation: 8.0,
     child: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
             image: AssetImage('assets/logo.png'),
             fit: BoxFit.cover),
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text("BOTON CON FONDO",style: TextStyle(color: Colors.black,),),
       ),
     ),
     // ),
     onPressed: () {
       print('HE SIDO PULSADO');
     },
   );
  }




}