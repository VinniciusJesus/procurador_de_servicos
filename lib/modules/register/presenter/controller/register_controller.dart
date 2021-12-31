import 'package:find_services/features/firebase/firebase_register_with_email/firebase_register_with_email.dart';
import 'package:find_services/modules/register/domain/entities/index.dart';
import 'package:find_services/modules/register/domain/usecases/register_with_email_validate/index.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final repeatPasswordEC = TextEditingController();

  final showPassword = false.obs;
  final showRepeatPassword = false.obs;

  Future<void> register() async {
    final params = RegisterParams(
      email: emailEC.text,
      password: passwordEC.text,
      name: nameEC.text,
      repeatPassword: repeatPasswordEC.text,
    );

    if (RegisterWithEmailValidate(params).validate() == true) {
      await FirebaseRegisterWithEmail().registerWithEmail(params);
    }
    ;
  }

  canShow() {
    if (showPassword.value) {
      showPassword(false);
    } else {
      showPassword(true);
    }
  }

  canShowRepeatPassword() {
    if (showRepeatPassword.value) {
      showRepeatPassword(false);
    } else {
      showRepeatPassword(true);
    }
  }
}
