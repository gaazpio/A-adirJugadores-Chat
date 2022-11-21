//CLASE PARA CREAR LOS INPUT TEXTS

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputTexts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return TextFormField(
      maxLength: 20,
      decoration: InputDecoration(
        labelText: "hola",
        labelStyle: TextStyle(
          color:Colors.black,
        ),
        suffixIcon: Icon(
          Icons.access_time,color: Color.fromRGBO(230, 230, 230,20),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:Colors.black),
        ),
      ),
    );
  }

}