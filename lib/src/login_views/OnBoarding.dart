import 'package:flutter/material.dart';

import '../custom_views/InputTexts.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OnBoardingView();
  }
}

class _OnBoardingView extends State<OnBoarding> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    inputTexts iNombre=inputTexts(sTittle: "Nombre");
    inputTexts iEdad= inputTexts(sTittle: "Edad");
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

            ],
          ),
        ),
      ),
    );
  }
}
