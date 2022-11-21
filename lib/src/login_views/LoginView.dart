//CREAMOS LA CLASE LOGIN PARA LOGEARTE EN LA APLICACION//

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../custom_views/InputTexts.dart';

class Login extends StatelessWidget{
  Login({Key? key}) : super(key: key);


  void logearse(String emailAddress, String password, BuildContext context) async{

    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
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
        title: Text('Page title'),
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
    ],
    ),

      ),


    ),
    );
  }




}