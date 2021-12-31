import 'package:find_services/app/constants/index.dart';
import 'package:find_services/app/widgets/buttons/index.dart';
import 'package:find_services/app/widgets/inputs/index.dart';
import 'package:find_services/app/widgets/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/add_service_controller.dart';

class AddServiceView extends StatelessWidget {
  AddServiceView({Key? key}) : super(key: key);

  final _controller = AddServiceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MainColors().blue,
        centerTitle: true,
        title: Text(
          "Novo Serviço",
          style: mainTextStyle(size: 25, color: Colors.white),
        ),
      ),
      body: Container(
        height: Get.height * 100,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              RoundedInput(
                "Título",
                txtController: _controller.titleEC,
                txtInputType: TextInputType.text,
              ),
              SizedBox(height: 30),
              RoundedInput(
                "Tipo de Serviço",
                txtController: _controller.serviceTypeEC,
                txtInputType: TextInputType.text,
              ),
              SizedBox(height: 30),
              RoundedInput(
                "Descrição",
                txtController: _controller.descriptionEC,
                txtInputType: TextInputType.text,
              ),
              SizedBox(height: 30),
              CellPhoneInput(_controller.contactPhoneEC),
              SizedBox(height: 200),
              MainButton("Criar", onTap: () {
                _controller.addService();
              }),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
