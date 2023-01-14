// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../api/api_repository.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  final ApiRepository apiRepository;

  SplashController({required this.apiRepository});

  RxString token = "".obs;
  String pin_code = "";

  //GetStorage
  GetStorage storage_token = GetStorage();

  //
  @override
  void onReady() async {
    await Future.delayed(const Duration(milliseconds: 750));
    routePage();

    super.onReady();
  }

  //
  @override
  void onInit() {
    storage_token.remove("token");
    print("Splash View Yüklendi");
    //storageKey();
    super.onInit();
  }

  //routePage
  routePage() {
    if (storage_token.read("token") != "") {
      return Get.toNamed(Routes.HOME);
    } else {
      return Get.toNamed(Routes.LOGIN);
    }
  }

  storageKey() {
    if (storage_token.getKeys() != "token") {
      storage_token.write("token", "");
    } else {}
  }
}
