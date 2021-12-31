import '../../../../../features/validation/compare_fields/index.dart';
import '../../../../../features/validation/email/index.dart';
import '../../../../../features/validation/password/index.dart';
import '../../entities/index.dart';
import 'index.dart';

class RegisterWithEmailValidate
    implements
        IRegisterWithEmailValidate,
        IEmailValidation,
        IPasswordValidation,
        ICompareFieldsValidation {
  RegisterWithEmailValidate(this.params);

  final RegisterParams params;

  @override
  bool validate() {
    if (emailValidate() != true) return false;
    if (passwordValidate() != true) return false;
    if (compareFieldsValidate() != true) return false;

    return true;
  }

  @override
  bool compareFieldsValidate() {
    return CompareFieldsValidate().validate(password, compareFields);
  }

  @override
  bool emailValidate() {
    return EmailValidate().validate(email);
  }

  @override
  bool passwordValidate() {
    return PasswordValidate().validate(password);
  }

  @override
  String get compareFields => params.repeatPassword;

  @override
  String get email => params.email;

  @override
  String get password => params.password;
}
