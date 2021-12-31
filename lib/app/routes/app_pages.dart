import 'package:get/get.dart';

import '../../modules/modules_index.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.bottomBar,
      page: () => BottomBarView(),
      binding: BottomBarBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
