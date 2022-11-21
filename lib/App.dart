import 'package:examen_david_gazpio/src/login_views/HomeView.dart';
import 'package:examen_david_gazpio/src/login_views/LoginView.dart';
import 'package:examen_david_gazpio/src/login_views/OnBoarding.dart';
import 'package:examen_david_gazpio/src/login_views/Splash.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      initialRoute:"/splash",
      routes:{
        "/splash":(context)=> Splash(),
        "/login":(context) => Login(),
        "/home":(context)=>HomeView(),
        "/onBoarding":(context)=>OnBoarding(),
      },
    );

  }



}