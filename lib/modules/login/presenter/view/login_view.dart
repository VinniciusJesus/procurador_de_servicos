import 'package:find_services/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';

import '../../../../app/widgets/buttons/index.dart';
import '../../../../app/widgets/inputs/index.dart';
import '../../../../app/widgets/theme/index.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width * 100,
        height: Get.height * 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.5,
                  child: UnDraw(
                      color: MainColors().blue,
                      illustration: UnDrawIllustration.interview,
                      placeholder: Text("Illustration is loading..."),
                      errorWidget: Icon(Icons.error_outline,
                          color: Colors.red, size: 50)),
                ),
                Text(
                  "Login".toUpperCase(),
                  style: GoogleFonts.anton(
                    fontSize: 45,
                    color: MainColors().blue,
                  ),
                ),
                MainInput(
                  "Email",
                  txtController: controller.emailEC,
                  txtInputType: TextInputType.emailAddress,
                  icon: Icon(
                    FontAwesomeIcons.at,
                    color: Colors.grey,
                  ),
                ),
                PasswordInput(
                  "Senha",
                  txtController: controller.passwordEC,
                  showPassword: controller.showPassword,
                  onTap: () {
                    controller.canShow();
                  },
                  showLeftIcon: true,
                ),
                SizedBox(height: 40),
                Center(
                  child: Container(
                    width: Get.width * 1,
                    child: MainButton(
                      "Entrar",
                      onTap: () {
                        controller.login();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: MainTextButton(
                    "Criar uma Conta",
                    onTap: () {
                      Get.toNamed(Routes.register);
                    },
                    color: MainColors().blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
