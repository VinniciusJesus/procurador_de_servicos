import 'package:find_services/features/firebase/firebase_register_with_email/index.dart';
import 'package:find_services/modules/register/domain/entities/register_params.dart';
import 'package:find_services/modules/register/domain/usecases/register_with_email/index.dart';

class RegisterWithEmail implements IRegisterWithEmail {
  @override
  Future<void> registerWithEmail({
    required String name,
    required String email,
    required String password,
    required String repeatPassword,
  }) async {
    final params = RegisterParams(
      name: name,
      email: email,
      password: password,
      repeatPassword: repeatPassword,
    );

    await FirebaseRegisterWithEmail().registerWithEmail(params);
  }
}
