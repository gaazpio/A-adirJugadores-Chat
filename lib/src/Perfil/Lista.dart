import 'package:cloud_firestore/cloud_firestore.dart';

class Lista{
  final String? uid;
  final String? name;

  Lista({
    this.name="",
    this.uid="",

  });

  factory Lista.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Lista(
        name: data?['name'],
        uid:snapshot.id

    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if(uid!=null)"id":uid,
    };
  }
}