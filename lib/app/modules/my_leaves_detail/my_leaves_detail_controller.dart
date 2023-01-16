// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class MyLeavesDetailController extends GetxController {
  ApiRepository apiRepository;
  MyLeavesDetailController({required this.apiRepository});

  //
  @override
  void onInit() {
    print("MyLeaves Detail Yüklendi");
    super.onInit();
  }
}
