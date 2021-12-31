import 'package:find_services/app/widgets/buttons/index.dart';
import 'package:find_services/app/widgets/inputs/index.dart';
import 'package:find_services/app/widgets/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';

import '../controller/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

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
                      illustration: UnDrawIllustration.multitasking,
                      placeholder: Text("Illustration is loading..."),
                      errorWidget: Icon(Icons.error_outline,
                          color: Colors.red, size: 50)),
                ),
                Text(
                  "Cadastro".toUpperCase(),
                  style: GoogleFonts.anton(
                    fontSize: 45,
                    color: MainColors().blue,
                  ),
                ),
                MainInput(
                  "Seu Nome",
                  txtController: controller.nameEC,
                  txtInputType: TextInputType.text,
                  icon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.grey,
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
                PasswordInput(
                  "Confirme a Senha",
                  txtController: controller.repeatPasswordEC,
                  showPassword: controller.showRepeatPassword,
                  onTap: () {
                    controller.canShowRepeatPassword();
                  },
                  showLeftIcon: true,
                ),
                SizedBox(height: 40),
                Center(
                  child: Container(
                    width: Get.width * 1,
                    child: MainButton(
                      "Criar",
                      onTap: () {
                        controller.register();
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: MainTextButton(
                    "Voltar para o Login",
                    onTap: () {
                      Get.back();
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
