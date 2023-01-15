// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../api/api_repository.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  final ApiRepository apiRepository;

  SplashController({required this.apiRepository});

  final storage_token = GetStorage();

  //
  @override
  void onInit() {
    print("Splash View Yüklendi");
    print(storage_token.read("token2"));
    super.onInit();
  }

  //
  @override
  void onReady() async {
    super.onReady();
    if (storage_token.read("token2") != "") {
      Future.delayed(const Duration(milliseconds: 750), () {
        Get.offAllNamed(Routes.HOME);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 750), () {
        Get.offAllNamed(Routes.LOGIN);
      });
    }
  }
}
