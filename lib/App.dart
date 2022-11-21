import 'package:examen_david_gazpio/src/login_views/HomeView.dart';
import 'package:examen_david_gazpio/src/login_views/LoginView.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      initialRoute:"/login",
      routes:{
        "/login":(context) => Login(),
        "/home":(context)=>HomeView(),
      },
    );

  }



}