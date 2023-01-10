// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/response/get_my_payroll_model.dart';

class StartController extends GetxController {
  StartController({required this.apiRepository});
  final ApiRepository apiRepository;

  MyPayrollsModel myPayrolls = MyPayrollsModel();

  bool isLoading = false;

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  //

  login() async {
    final res = await apiRepository.getMyPayrolls();
    isLoading = true;
  }
}
