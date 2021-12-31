import '../../../app/widgets/snackbar/index.dart';

class CompareFieldsValidate {
  final _snackbar = SnackbarImpl();

  bool validate(String password, String compareFields) {
    if (compareFields.isEmpty) {
      _snackbar.error("Por favor, confirme sua senha.");
      return false;
    }

    if (compareFields != password) {
      _snackbar.error("Senhas divergentes.");
      return false;
    }

    return true;
  }
}
