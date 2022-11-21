
import 'package:flutter/material.dart';

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
  }






  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(padding: EdgeInsets.fromLTRB(30, 55, 0, 10),
                  child:Image(image: AssetImage("/assets/logo.png"),)),
            ]


        ),
      ),
    );
  }





}