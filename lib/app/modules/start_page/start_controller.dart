// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class StartController extends GetxController {
  StartController({required this.apiRepository});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final ApiRepository apiRepository;

  //
  @override
  void onInit() {
    print("Start View Yüklendi");
    super.onInit();
  }

  login() {
    apiRepository.login(email.text, password.text);
  }
}
