import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_services/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../modules/register/domain/entities/index.dart';
import '../../user/domain/usecases/local_storage_save_user.dart/index.dart';
import '../firebase_get_user/index.dart';
import 'index.dart';

class FirebaseRegisterWithEmail {
  final _firebaseInstance = FirebaseAuth.instance;
  final _firestoreInstance = FirebaseFirestore.instance;

  Future<void> registerWithEmail(RegisterParams params) async {
    try {
      final addAccount = await _firebaseInstance.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );

      await _firestoreInstance
          .collection("users")
          .doc(addAccount.user!.uid)
          .set({
        "name": params.name,
        "email": params.email,
        "id": addAccount.user!.uid,
      });

      final _loggedUser = await FirebaseGetUser().call(addAccount.user!.uid);

      await LocalStorageSaveUser().call(_loggedUser);
      Get.toNamed(Routes.bottomBar);
    } on FirebaseAuthException catch (e) {
      FirebaseRegisterErros().call(e.code);
    }
  }
}
