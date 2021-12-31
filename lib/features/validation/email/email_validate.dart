import 'package:get/get.dart';

import '../../../app/widgets/snackbar/index.dart';

class EmailValidate {
  final _snackbar = SnackbarImpl();

  bool validate(String email) {
    if (email.isEmpty) {
      _snackbar.error("Por favor, digite o seu e-mail.");
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      _snackbar.error("Por favor, digite um e-mail válido.");
      return false;
    }

    return true;
  }
}
