//CLASE PARA CREAR LOS INPUT TEXTS

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputTexts extends StatelessWidget{
  final String sTittle;
  final TextEditingController myController= TextEditingController(text: "");

inputTexts({Key? key, required this.sTittle}): super(key:key);


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