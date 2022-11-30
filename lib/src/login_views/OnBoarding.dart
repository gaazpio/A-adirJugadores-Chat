import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Perfil/Perfiles.dart';
import '../custom_views/InputTexts.dart';


// EL ONBOARDING SIRVE PARA CREAR EL PERFIL AL USUARIO LOGEADO


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OnBoardingView();
  }
}

class _OnBoardingView extends State<OnBoarding> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    validarPerfil();
  }
  void validarPerfil() async {

    final docRef = db.collection("perfiles").doc((FirebaseAuth.instance.currentUser?.uid));
    DocumentSnapshot docsnap=  await docRef.get();
    if(docsnap.exists){

      Navigator.of(context).popAndPushNamed("/home");
    }

  }


  void registarOnboarding(String  nombre, int edad, BuildContext context) async{
    Perfil perfil =
    Perfil(nombre: nombre,edad: edad);


    await db
        .collection("perfiles")
        .doc((FirebaseAuth.instance.currentUser?.uid))
        .set(perfil.toFirestore())
        .onError((e, _) => print("Error writing document: $e"));

    Navigator.of(context).popAndPushNamed("/home");
  }



  @override
  Widget build(BuildContext context) {

    inputTexts2 iNombre=inputTexts2(sTittle: "Nombre");
    inputTexts2 iEdad= inputTexts2(sTittle: "Edad");

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
              iEdad,
              OutlinedButton(
                onPressed: () {
                  registarOnboarding(iNombre.getText(),int.parse(iEdad.getText()),context);
                     print("NOMBRE "+iNombre.getText()+" EDAD "+iEdad.getText());
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
