//CLASE PARA CREAR LOS INPUT TEXTS

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputTexts extends StatelessWidget{
  final String sTittle;
  final TextEditingController myController= TextEditingController(text: "");

inputTexts({Key? key, required this.sTittle}): super(key:key);

  String getText() {
    return myController.text;
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return TextFormField(
      controller: myController,
      maxLength: 20,
      decoration: InputDecoration(
        labelText: sTittle,
        labelStyle: TextStyle(
          color:Colors.black,
        ),
        prefixIcon:(Padding(padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
        child: Image(image: AssetImage("assets/reloj.png"),width: 5,))
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:Colors.black),
        ),
      ),
    );
  }

}