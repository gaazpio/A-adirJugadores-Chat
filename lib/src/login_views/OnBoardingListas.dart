import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_david_gazpio/src/Perfil/Lista.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  void registarOnboardingList(String nombre,String mvp,String posi, BuildContext context) async{
    Lista mb = new Lista(name: nombre,mvp: mvp,posicion: posi);

    final docRef = db.collection("listas");
    await docRef.add(mb.toFirestore());
    Navigator.of(context).popAndPushNamed("/home");
  }


  @override
  Widget build(BuildContext context) {

    inputTexts2 iNombre=inputTexts2(sTittle:"Nombre del equipo");
    inputTexts2 iMvp=inputTexts2(sTittle:"Mejor jugador");
    inputTexts2 iPosicion=inputTexts2(sTittle:"Posicion que va a quedar en el mundial");

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
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              iNombre,
              iMvp,
              iPosicion,
              OutlinedButton(
                onPressed: () {
                  registarOnboardingList(iNombre.getText(),iMvp.getText(),iPosicion.getText(),context);
                  print("NOMBRE "+iNombre.getText()+"MVP "+iMvp.getText()+""+iPosicion.getText());
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
