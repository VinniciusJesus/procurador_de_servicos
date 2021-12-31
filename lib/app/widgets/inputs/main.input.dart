import 'package:find_services/app/constants/index.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class MainInput extends StatelessWidget {
  final TextEditingController txtController;
  final String label;
  final TextInputType txtInputType;
  final bool obscure;
  final Function(String)? onChanged;
  final Color color;
  final String prefix;
  final bool haveDarkMode;
  final Widget icon;

  MainInput(
    this.label, {
    Key? key,
    required this.txtController,
    required this.txtInputType,
    required this.icon,
    this.obscure = false,
    this.haveDarkMode = true,
    this.prefix = "",
    this.color = const Color(0xFF272B2E),
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TextFormField(
        obscureText: obscure,
        keyboardType: txtInputType,
        controller: txtController,
        style: mainTextStyle(),
        decoration: InputDecoration(
          icon: icon,
          prefixText: prefix,
          labelText: label,
          labelStyle: mainTextStyle(color: Colors.grey),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
