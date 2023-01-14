// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../../../api/api_repository.dart';

class MyApproveController extends GetxController {
  final ApiRepository apiRepository;
  MyApproveController({required this.apiRepository});
  //
  @override
  void onInit() {
    print("MyApprove View Yüklendi");
    super.onInit();
  }
}
