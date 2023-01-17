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
    print("Storage Token Bilgisi : ${storage_token.read("token2")}");
    print("Storage User Bilgisi : ${storage_token.read("user_name")}");
    print("Storage Şirket Bilgisi : ${storage_token.read("select_company")}");
    super.onInit();
  }

  //
  @override
  void onReady() async {
    super.onReady();

    if (storage_token.read("token2") != null) {
      if (storage_token.read("token2") != "") {
        if (storage_token.read("pin_code") != null) {
          Future.delayed(const Duration(milliseconds: 750), () {
            Get.offAllNamed(Routes.PIN_LOGIN);
          });
        } else {
          Future.delayed(const Duration(milliseconds: 750), () {
            Get.offAllNamed(Routes.LOGIN);
          });
        }
      } else {
        Future.delayed(const Duration(milliseconds: 750), () {
          Get.offAllNamed(Routes.LOGIN);
        });
      }
    } else {
      Future.delayed(const Duration(milliseconds: 750), () {
        Get.toNamed(Routes.LOGIN);
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("object");
  }
}
