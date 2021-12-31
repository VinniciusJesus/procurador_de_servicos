import 'package:find_services/app/constants/index.dart';
import 'package:find_services/app/widgets/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class CellPhoneInput extends StatelessWidget {
  final _color = MainColors();
  final bool hasIcon;
  final bool haveDarkMode;
  final TextEditingController txtController;

  CellPhoneInput(this.txtController,
      {this.hasIcon = true, this.haveDarkMode = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        inputFormatters: [
          PhoneInputFormatter(),
        ],
        style: mainTextStyle(
          color: Colors.grey,
        ),
        controller: txtController,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 2, color: _color.blue),
            ),
            hintText: "ex: +55 (16) 99999-9999",
            hintStyle: mainTextStyle(size: 16, color: Colors.grey),
            labelText: "Celular",
            labelStyle: mainTextStyle(color: Colors.grey)),
      ),
    );
  }
}
