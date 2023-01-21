// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_detail_model.dart';
import 'package:sun_ik_app/app/modules/request_page/request_controller.dart';

class RequestDetailController extends GetxController {
  final ApiRepository apiRepository;
  RequestDetailController({required this.apiRepository});

  int detailType = 0;
  int idMaster = 0;

  RequestController requestController =
      Get.put(RequestController(apiRepository: Get.find()));

  //Model
  MyRequestDetailModel? requestDetail = MyRequestDetailModel();

  //Değişkenler
  Rx<RxStatus> status = RxStatus.empty().obs;
  // RxBool status = false.obs;
  //
  @override
  void onInit() {
    idMaster = Get.arguments["IdMaster"];
    detailType = Get.arguments["DetailType"];
    print("objecasdasddadt");
    getMyRequestDetail(idMaster, detailType);
    print("Request Detail View Yüklendi");
    super.onInit();
  }

  //getMyRequestDetail
  getMyRequestDetail(int? idMater, int? detailType) async {
    status.value = RxStatus.loading();
    requestDetail = await apiRepository.getMyRequestDetail(idMater, detailType);
    status.value = RxStatus.success();
  }

  
}
