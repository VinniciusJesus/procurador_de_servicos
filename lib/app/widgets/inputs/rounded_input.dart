import 'package:find_services/app/constants/index.dart';
import 'package:find_services/app/widgets/theme/index.dart';
import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final _color = MainColors();
  final TextEditingController txtController;
  final String label;
  final TextInputType txtInputType;
  final bool obscure;
  final Function(String)? onChanged;
  final Color color;
  final String prefix;
  final bool haveDarkMode;

  RoundedInput(
    this.label, {
    Key? key,
    required this.txtController,
    required this.txtInputType,
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
        style: mainTextStyle(
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          prefixText: prefix,
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: _color.blue,
            ),
          ),
          labelText: label,
          labelStyle: mainTextStyle(
            color: Colors.grey,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
