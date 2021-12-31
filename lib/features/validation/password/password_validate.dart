import '../../../app/widgets/snackbar/index.dart';

class PasswordValidate {
  final _snackbar = SnackbarImpl();

  bool validate(String password) {
    if (password.isEmpty) {
      _snackbar.error("Por favor, digite a sua senha.");
      return false;
    }

    if (password.length < 6) {
      _snackbar.error("Desculpe, senha muito curta.");
      return false;
    }

    if (password.length >= 30) {
      _snackbar.error("Desculpe, senha muito longa.");
      return false;
    }

    return true;
  }
}
