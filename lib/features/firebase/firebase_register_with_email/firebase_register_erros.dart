
import '../../../app/widgets/popup/index.dart';

class FirebaseRegisterErros {
  final _popup = PopupImpl();
  final _errorTitle = "Erro ao se Cadastrar";

  void call(String error) {
    switch (error) {
      case "operation-not-allowed":
        _popup.error(
            _errorTitle, "Desculpe, Esta operação não foi permitida.");
        return;
      case "weak-password":
        _popup.error(
            _errorTitle, "Sua senha precisa ter mais de 5 caracteres.");
        return;
      case "invalid-email":
        _popup.error(_errorTitle, "Por favor, digite um e-mail válido.");
        return;
      case "email-already-in-use":
        _popup.error(_errorTitle, "Este e-mail já está sendo usado.");
        return;
      case "invalid-credential":
        _popup.error(_errorTitle, "Por favor, digite um e-mail válido.");
        return;
      default:
        _popup.error(
          _errorTitle,
          "Falha de conexão. Aguarde alguns minutos e tente novamente",
        );
        return;
    }
  }
}
