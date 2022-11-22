import 'package:flutter/material.dart';

import '../custom_views/Button.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);


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
      body: Column(
        children: [OutlinedButton(
          onPressed: () {
    Navigator.of(context).popAndPushNamed("/login");
    },
      style: OutlinedButton.styleFrom(
          backgroundColor: Color.fromRGBO(210, 210, 210, 20)),
      child: Text
        ("Ir al login",style:TextStyle(fontSize: 14,color: Color.fromRGBO(135, 10, 1, 20),)
      ),),


          button1()],
      ),



    );
  }


}