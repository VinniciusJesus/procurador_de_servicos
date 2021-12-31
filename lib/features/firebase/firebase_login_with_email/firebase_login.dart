import 'package:find_services/app/routes/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../modules/login/domain/entities/index.dart';
import '../../user/domain/usecases/local_storage_save_user.dart/index.dart';
import '../firebase_get_user/index.dart';
import 'index.dart';

class FirebaseLoginWithEmail {
  final _firebaseInstance = FirebaseAuth.instance;

  Future<void> loginWithEmail(LoginParams params) async {
    try {
      final authentication = await _firebaseInstance.signInWithEmailAndPassword(
          email: params.email, password: params.password);
      await LocalStorageSaveUser()
          .call(await FirebaseGetUser().call(authentication.user!.uid));
      Get.toNamed(Routes.bottomBar);
    } on FirebaseAuthException catch (e) {
      FirebaseLoginErrors().call(e.code);
    }
  }
}
