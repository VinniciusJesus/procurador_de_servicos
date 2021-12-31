import 'package:cloud_firestore/cloud_firestore.dart';

import '../../user/domain/entities/index.dart';

class FirebaseGetUser {
  final _firestore = FirebaseFirestore.instance;

  Future<LoggedUserParams> call(String uid) async {
    final doc = await _firestore.collection("users").doc(uid).get();
    return LoggedUserParams(
      name: doc["name"],
      email: doc["email"],
      userID: doc.id,
    );
  }
}
