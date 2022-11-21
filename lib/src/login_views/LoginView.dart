//CREAMOS LA CLASE LOGIN PARA LOGEARTE EN LA APLICACION//

import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
     appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Page title'),
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
    );

  }




}