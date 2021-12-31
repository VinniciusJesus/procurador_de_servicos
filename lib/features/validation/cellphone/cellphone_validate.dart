import 'package:get/get.dart';

import '../../../app/widgets/snackbar/index.dart';

class CellphoneValidate {
  final _snackbar = SnackbarImpl();

  bool validate(String cellphone) {
    String formattedPhone = cellphone.replaceAll(RegExp(r"\s+"), "");
    formattedPhone = formattedPhone.replaceAll(RegExp(r'[^\w\s]+'), '');

    if (cellphone.isEmpty) {
      _snackbar.error("Por favor, digite o celular.");
      return false;
    }

    if (!GetUtils.isPhoneNumber(formattedPhone)) {
      _snackbar.error("Por favor, digite um número de celular válido.");
      return false;
    }
    return true;
  }
}
