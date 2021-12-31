import 'package:find_services/features/firebase/firebase_login_with_email/index.dart';
import 'package:find_services/modules/login/domain/entities/index.dart';
import 'package:find_services/modules/login/domain/usecases/login_with_email_validate/login_with_email_validate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final showPassword = false.obs;

  canShow() {
    if (showPassword.value) {
      showPassword(false);
    } else {
      showPassword(true);
    }
  }

  Future<void> login() async {
    final params = LoginParams(email: emailEC.text, password: passwordEC.text);
    if (LoginWithEmailValidate(params).validate() == true) {
      await FirebaseLoginWithEmail().loginWithEmail(params);
    }
  }
}
