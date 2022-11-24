import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_david_gazpio/src/DataHolder/DataHolder.dart';
import 'package:examen_david_gazpio/src/login_views/HomeView.dart';
import 'package:flutter/material.dart';
import '../Perfil/Lista.dart';
import 'Button.dart';


class InsideList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InsideList();
  }
}

class _InsideList extends State<InsideList> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  List<Lista> listRooms = [];
  Lista typeaList = Lista();
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    print(DataHolder().whatList.name!);
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_none),
        title: Text(DataHolder().whatList.name!),
        backgroundColor: Color.fromRGBO(112, 0, 0, 20),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 20, 5),
                child: Container(
                  width: 360,
                  height: 50,
                  child: Text("NOMBRE DEL JUGADOR : \n"+ DataHolder().whatList.name!,style: TextStyle(color: Colors.white,fontSize: 20)),
                  color: Colors.black,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 20, 5),
                child: Container(
                  width: 360,
                  height: 50,
                  child: Text("EDAD :\n"+DataHolder().whatList.edad.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),

                  color: Colors.black,
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 20, 5),
                child: Container(
                  width: 360,
                  height: 50,
                  child: Text("POSICION:\n"+DataHolder().whatList.posicion!,style: TextStyle(color: Colors.white,fontSize: 20)),
                  color: Colors.black,
                ),
              ),

              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0), child:Row (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 440, 0, 0),
                    child:   button1(),
                    ),
                ],
              ),
              ),
            ],
          )),
    );


  }
}
