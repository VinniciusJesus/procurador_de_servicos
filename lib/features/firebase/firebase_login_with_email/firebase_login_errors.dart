import '../../../app/widgets/popup/index.dart';

class FirebaseLoginErrors {
  final _popup = PopupImpl();
  final _errorTitle = "Erro ao Entrar";

  void call(String error) {
    switch (error) {
      case "unknown":
        _popup.error(_errorTitle, "Desculpe, este usuário não foi encontrado.");
        return;
      case "user-not-found":
        _popup.error(_errorTitle, "Desculpe, este usuário não foi encontrado.");
        return;
      case "wrong-password":
        _popup.error(_errorTitle, "Senha ou usuário incorretos.");
        return;
      case "user-disabled":
        _popup.error(_errorTitle, "Desculpe, este usuário  foi desativado.");
        return;
      case "too-many-requests":
        _popup.error(_errorTitle,
            "Excesso de tentativas, tente novamente após alguns minutos.");
        return;
      case "operation-not-allowed":
        _popup.error(_errorTitle, "Desculpe, Esta operação não foi permitida.");
        return;
      default:
        _popup.error(_errorTitle,
            "Falha de conexão. Aguarde alguns minutos e tente novamente.");
        return;
    }
  }
}
