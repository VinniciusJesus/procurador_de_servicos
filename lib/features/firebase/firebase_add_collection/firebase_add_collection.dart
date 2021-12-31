import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAddCollection {
  final _firestore = FirebaseFirestore.instance;

  Future<void> addCollection({
    required String collectionTitle,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collectionTitle).add(data);
  }
}
