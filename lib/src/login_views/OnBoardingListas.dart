import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_david_gazpio/src/Perfil/Lista.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Perfil/Perfiles.dart';
import '../custom_views/InputTexts.dart';

class OnBoardingListas extends StatefulWidget {
  const OnBoardingListas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OnBoardingListasView();
  }
}

class _OnBoardingListasView extends State<OnBoardingListas> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();

  }

  void registarOnboarding(String nombre, BuildContext context) async{
    Lista lista = Lista(name: nombre,);


    await db
        .collection("listas")
        .doc((FirebaseAuth.instance.currentUser?.uid))
        .set(lista.toFirestore())
        .onError((e, _) => print("Error writing document: $e"));

    Navigator.of(context).popAndPushNamed("/home");
  }



  @override
  Widget build(BuildContext context) {

    inputTexts2 iNombre=inputTexts2(sTittle:"Nombre");

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('OnBoarding'),
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
              iNombre,
              OutlinedButton(
                onPressed: () {
                  registarOnboarding(iNombre.getText(),context);
                  print("NOMBRE "+iNombre.getText());
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(210, 210, 210, 20)),
                child: Text
                  ("Añadir a la lista",style:TextStyle(fontSize: 14,color: Color.fromRGBO(135, 10, 1, 20),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
