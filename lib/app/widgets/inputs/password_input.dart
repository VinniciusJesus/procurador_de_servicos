import 'package:find_services/app/constants/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput(
    this.label, {
    Key? key,
    required this.txtController,
    required this.showPassword,
    required this.onTap,
    required this.showLeftIcon,
  }) : super(key: key);

  late RxBool showPassword;
  late VoidCallback onTap;
  final String label;
  final bool showLeftIcon;

  late final TextEditingController txtController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        obscureText: showPassword.value == false ? true : false,
        keyboardType: TextInputType.text,
        style: mainTextStyle(
          color: Colors.grey,
        ),
        controller: txtController,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: mainTextStyle(color: Colors.grey),
            icon: showLeftIcon == true
                ? Icon(
                    FontAwesomeIcons.lock,
                    color: Colors.grey,
                  )
                : null,
            suffixIcon: IconButton(
              padding: const EdgeInsets.only(right: 20),
              icon: showPassword.value == false
                  ? const Icon(FontAwesomeIcons.eyeSlash, color: Colors.grey)
                  : const Icon(FontAwesomeIcons.eye, color: Colors.grey),
              onPressed: onTap,
            )),
      ),
    );
  }
}
