class RegisterParams {
  final String email;
  final String password;
  final String repeatPassword;
  final String name;

  RegisterParams({
    required this.email,
    required this.password,
    required this.name,
    required this.repeatPassword,
  });
}
