import 'package:cloud_firestore/cloud_firestore.dart';

class Perfil{

  final String? nombre;
  final int? edad;

  Perfil({
    this.nombre="",
    this.edad=0,
  });

  factory Perfil.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Perfil(
      nombre: data?['name'],
      edad: data?['edad'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (nombre != null) "name": nombre,
      if (edad != 0) "edad": edad,
    };
  }
}

