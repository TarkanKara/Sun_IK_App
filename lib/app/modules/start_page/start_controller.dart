// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_model/payroll_model.dart';
import 'package:sun_ik_app/api/api_model/picture_model.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/response/get_my_payroll_model.dart';

class StartController extends GetxController {
  StartController({required this.apiRepository});
  final ApiRepository apiRepository;

  PictureModel pictureModel = PictureModel();

  PayrollModel payrollModel = PayrollModel();

  Rx<RxStatus> status = RxStatus.empty().obs;

  @override
  void onInit() {
    //getMyPayroll();
    getMyPicture();
    super.onInit();
  }

  getMyPayroll() async {
    status.value = RxStatus.loading();
    payrollModel = (await apiRepository.getPayroll())!;
    status.value = RxStatus.success();
  }

  void getMyPicture() async {
    status.value = RxStatus.loading();
    payrollModel = (await apiRepository.getMyPicture())!;
    status.value = RxStatus.success();
  }
}
