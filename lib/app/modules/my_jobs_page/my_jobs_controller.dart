// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../../../api/api_repository.dart';

class MyJobsController extends GetxController {
  final ApiRepository apiRepository;
  MyJobsController({required this.apiRepository});

  //Model

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    print("MyJobs View Yüklendi");
    super.onInit();
  }
}
