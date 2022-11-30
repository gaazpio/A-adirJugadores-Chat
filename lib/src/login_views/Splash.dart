
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// CLASE SPLASH ESTA CLASE DEPENDIENDO DE SI ESTAS O NO LOGEADO O SI TIENES UN PERFIL, si estas
// logeado y tienes perfil te lleva directamente al HOME, si estas logeado y no tienes el perfil creado te lleva al onboarding
// y si no estas logeado te lleva al login


class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplasState();
  }


}

class _SplasState extends State<Splash>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveUser();
  }
  void moveUser()async{
    await Future.delayed(Duration(seconds:3));

    if(FirebaseAuth.instance.currentUser==null){
      Navigator.of(context).popAndPushNamed("/login");
    }
    else{
      bool existe=await checkExistingProfile();
      if(existe){
        setState(() {
          Navigator.of(context).popAndPushNamed("/home");
        });
      }
      else{
        Navigator.of(context).popAndPushNamed("/onBoarding");
      }
    }
  }

  Future<bool> checkExistingProfile() async{
    String? idUser=FirebaseAuth.instance.currentUser?.uid;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final docRef = db.collection("perfiles").doc(idUser);

    DocumentSnapshot docsnap= await docRef.get();

    return docsnap.exists;
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Image(image: AssetImage("assets/logo.png"),),
            ],
        ),
      ),
    );
  }





}