import 'package:find_services/modules/add_service/domain/entities/index.dart';
import 'package:find_services/modules/add_service/domain/usecases/add_service/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddServiceController extends GetxController {
  final titleEC = TextEditingController();
  final descriptionEC = TextEditingController();
  final contactPhoneEC = TextEditingController();
  final serviceTypeEC = TextEditingController();

  Future<void> addService() async {
    final params = AddServiceParams(
      title: titleEC.text,
      cellphone: contactPhoneEC.text,
      description: descriptionEC.text,
      serviceType: serviceTypeEC.text,
    );

    await AddServiceImpl().addService(params);

    titleEC.clear();
    contactPhoneEC.clear();
    descriptionEC.clear();
    serviceTypeEC.clear();
  }
}
