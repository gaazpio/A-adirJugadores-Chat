import 'package:flutter/material.dart';


class InsideList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InsideList();
  }
}

class _InsideList extends State<InsideList> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_none),
        title: Text("hola"),
        backgroundColor: Color.fromRGBO(112, 0, 0, 20),
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
                  Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 0), child: Text("HOLA")),
                ],
              ),
              ),
            ],
          )),
    );


  }
}
