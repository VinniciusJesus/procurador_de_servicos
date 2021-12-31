import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:find_services/app/widgets/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../modules_index.dart';
import '../controller/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => _getPage(controller.currentPage.value),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: MainColors().blue,
          tabs: [
            TabData(iconData: FontAwesomeIcons.suitcase, title: "Serviços"),
            TabData(iconData: FontAwesomeIcons.plus, title: "Publicar"),
          ],
          onTabChangedListener: (position) {
            controller.changeCurrentIndex(position);
          },
        ));
  }

  _getPage(int indexPage) {
    switch (indexPage) {
      case 0:
        return Container();
      default:
        return AddServiceView();
    }
  }
}
