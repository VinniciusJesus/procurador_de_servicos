import '../../../../../features/firebase/firebase_login_with_email/index.dart';
import '../../entities/index.dart';
import 'index.dart';

class LoginWithEmail implements ILoginWithEmail {
  @override
  Future<void> loginWithEmail(String email, String password) async {
    final params = LoginParams(email: email, password: password);
    await FirebaseLoginWithEmail().loginWithEmail(params);
  }
}
