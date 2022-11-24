import 'package:cloud_firestore/cloud_firestore.dart';

class Lista{
  final String? uid;
  final String? name;
  final int edad;
  final String? posicion;


  Lista({
    this.name="",
    this.edad=0,
    this.uid="",
    this.posicion="",

  });

  factory Lista.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Lista(
        name: data?['name'],
        edad: data?['edad'],
        posicion:data?['posicion'],
        uid:snapshot.id

    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (edad != 0) "edad": edad,
      if (posicion != null) "posicion": posicion,


    };
  }
}