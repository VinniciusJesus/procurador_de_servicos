import '../../../../../features/validation/email/index.dart';
import '../../../../../features/validation/password/index.dart';
import '../../entities/index.dart';
import 'index.dart';

class LoginWithEmailValidate
    implements ILoginWithEmailValidate, IEmailValidation, IPasswordValidation {
  LoginWithEmailValidate(this.params);

  final LoginParams params;

  @override
  String get password => params.password;

  @override
  String get email => params.email;

  @override
  bool emailValidate() {
    return EmailValidate().validate(email);
  }

  @override
  bool passwordValidate() {
    return PasswordValidate().validate(password);
  }

  @override
  bool validate() {
    if (emailValidate() != true) return false;
    if (passwordValidate() != true) return false;

    return true;
  }
}
