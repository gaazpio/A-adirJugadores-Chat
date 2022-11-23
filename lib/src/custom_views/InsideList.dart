import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Perfil/Lista.dart';


class InsideList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InsideList();
  }
}

class _InsideList extends State<InsideList> {
  List<Lista> listRooms = [];
  Lista typeaList = Lista();
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    print(typeaList.name);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_none),
        title: Text("InsideChat"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 685,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0), child:Row (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 0), child: Text("hola")),
                ],
              ),
              ),
            ],
          )),
    );


  }
}
