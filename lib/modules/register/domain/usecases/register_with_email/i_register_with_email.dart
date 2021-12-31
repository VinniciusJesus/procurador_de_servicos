abstract class IRegisterWithEmail {
  Future<void> registerWithEmail({
    required String name,
    required String email,
    required String password,
    required String repeatPassword,
  });
}
