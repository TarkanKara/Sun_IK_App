// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/splash_page/splash_controller.dart';

import '../../../api/api_repository.dart';
import '../../models/login/login_model.dart';

class LoginController extends GetxController {
  ApiRepository apiRepository;
  LoginController({required this.apiRepository});
  SplashController splashController =
      Get.put(SplashController(apiRepository: Get.find()));

  //Model
  LoginModel loginModel = LoginModel();

  //
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = false.obs;
  RxString password = "".obs;
  RxBool switchControl = false.obs;
  Rx<RxStatus> status = RxStatus.empty().obs;

  //TextEditingController
  TextEditingController user = TextEditingController();
  TextEditingController passwordu = TextEditingController();
  dropDownValues(String value) {
    dropdownvalue.value = value;
  }

  RxList<String> company = [
    "Select Company",
    "Sun",
  ].obs;

  void visible() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  visibleIcon() {
    if (isPasswordHidden.value == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }

  //currentLogin
  currentLogin() async {
    status.value = RxStatus.loading();
    loginModel = (await apiRepository.getLogin(user.text, passwordu.text))!;
    splashController.storage_token.write("token", loginModel.token);
    //splashController.token.value = loginModel.token.toString();
    status.value = RxStatus.success();
  }

  //
  /* isAuthCorrect() async {
    if (user.text == "user" && passwordu.text == "Vbt1993.") {
      return Get.toNamed(Routes.HOME);
    } else {
      return Get.defaultDialog(
        title: "Hata",
        titleStyle: GoogleFonts.inter(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 3.h),
        content: Column(
          children: [
            Text("Kullanıcı bilgileri yanlış girildi.",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 2.5.h)),
            Text("Bilgilerinizi kontrol ediniz.",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 2.5.h)),
          ],
        ),
        backgroundColor: const Color(0xffcf3842),
      );
    }
  } */
}
