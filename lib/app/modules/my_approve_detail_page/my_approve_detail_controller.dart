// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class MyApproveDetailController extends GetxController {
  final ApiRepository apiRepository;
  MyApproveDetailController({required this.apiRepository});

  //
  @override
  void onInit() {
    print("MyApproveDetail View Yüklendi");
    super.onInit();
  }
}
