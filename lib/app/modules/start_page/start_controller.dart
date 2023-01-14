// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class StartController extends GetxController {
  final ApiRepository apiRepository;
  StartController({required this.apiRepository});

  //
  @override
  void onInit() {
    print("Start View Yüklendi");
    super.onInit();
  }
}
