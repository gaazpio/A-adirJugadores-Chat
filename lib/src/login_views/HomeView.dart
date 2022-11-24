import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_david_gazpio/src/Perfil/Lista.dart';
import 'package:examen_david_gazpio/src/custom_views/ListItem.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../DataHolder/DataHolder.dart';
import '../Perfil/Perfiles.dart';
import '../custom_views/Button.dart';

class HomeView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeView> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  List<Lista> listRooms = [];
  Lista typeaList = Lista();
  String name = "--";

  @override
  void initState() {
    super.initState();
    pasarlistas();
  }

  void onClickgo(int index) {
    print("has clicado");
    print(listRooms[index].name);
    Navigator.of(context).pushNamed("/insideList");
    DataHolder().whatList=listRooms[index];
  }

  void pasarlistas() async {
    final docRef = db.collection("listas").withConverter(
        fromFirestore: Lista.fromFirestore,
        toFirestore: (Lista list, _) => list.toFirestore());
    final docSnap = await docRef.get();
    setState(() {
      for (int i = 0; i < docSnap.docs.length; i++) {
        listRooms.add(docSnap.docs[i].data());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('HomeView'),
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
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: listRooms.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItem(
              stittle: listRooms[index].name!,
              whitClickGo: onClickgo,
              iIndex: index,
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).popAndPushNamed("/onBoardingListas");
        },
        label: const Text('Añadir nueva lista'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
