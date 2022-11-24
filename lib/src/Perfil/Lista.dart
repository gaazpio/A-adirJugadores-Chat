import 'package:cloud_firestore/cloud_firestore.dart';

class Lista{
  final String? uid;
  final String? name;
  final String? mvp;
  final int posicion;


  Lista({
    this.name="",
    this.mvp="",
    this.uid="",
    this.posicion=0,

  });

  factory Lista.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Lista(
        name: data?['name'],
        mvp: data?['mvp'],
        posicion:data?['posicion'],
        uid:snapshot.id

    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (mvp != null) "mvp": mvp,
      if (posicion != 0) "posicion": posicion,


    };
  }
}