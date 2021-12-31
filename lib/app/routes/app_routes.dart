part of 'app_pages.dart';

abstract class Routes {
  static const bottomBar = _Paths.bottomBar;
  static const login = _Paths.login;
  static const register = _Paths.register;
}

abstract class _Paths {
  static const bottomBar = '/bottomBar';
  static const login = '/login';
  static const register = '/register';
}
