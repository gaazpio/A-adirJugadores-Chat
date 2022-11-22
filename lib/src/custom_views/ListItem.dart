import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{
  final String stittle;
  final int iIndex;
  final Function(int index) whitClickGo;
const ListItem({Key? key , required this.stittle, required this.whitClickGo, required this.iIndex,}) : super(key: key);
  @override


  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(stittle, textScaleFactor: 1.1,),
      leading: Icon(Icons.person),
      onTap: (){
        whitClickGo(iIndex);
      },
    );
  }


}