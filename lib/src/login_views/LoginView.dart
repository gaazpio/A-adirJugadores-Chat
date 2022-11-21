//CREAMOS LA CLASE LOGIN PARA LOGEARTE EN LA APLICACION//

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../custom_views/InputTexts.dart';

class Login extends StatelessWidget{
  Login({Key? key}) : super(key: key);

  void logearse(String emailAddress, String password, BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password );
      Navigator.of(context).popAndPushNamed("/onBoarding");
      print("LOGEADO CON EXITO");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    inputTexts iUsuario=inputTexts(sTittle: "Usuario");
    inputTexts iPassword= inputTexts(sTittle: "Contraseña");


    return Scaffold(
     appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Login'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
          child: Container(
          child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    iUsuario,
    iPassword,

      OutlinedButton(
        onPressed: () {
          print("HAS INICIADO SESION CON " +
              iUsuario.getText() + " " + iPassword.getText());

          logearse(iUsuario.getText(), iPassword.getText(),context);
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Color.fromRGBO(210, 210, 210, 20)),
        child: Text
          ("Sign In",style:TextStyle(fontSize: 14,color: Color.fromRGBO(135, 10, 1, 20),)
        ),
      ),
    ],

    ),

      ),


    ),
    );
  }




}