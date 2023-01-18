// ignore_for_file: unrelated_type_equality_checks, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../models/login/login_model.dart';

import 'package:get_storage/get_storage.dart';
import 'package:sun_ik_app/utils/dialog.dart';

import '../../routes/app_pages.dart';
import '../splash_page/splash_controller.dart';

class LoginController extends GetxController {
  ApiRepository apiRepository;
  LoginController({required this.apiRepository});
  SplashController splashController =
      Get.put(SplashController(apiRepository: Get.find()));

  //
  GetStorage storage_token = GetStorage();

  //Model
  LoginModel loginModel = LoginModel();

  //
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = true.obs;
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
    if (dropdownvalue.value != "Sun") {
      return CustomDialog.getDialog("Uyarı", "Şirket Seçimi Yapnız", "Kapat");
    } else if (user.text == "") {
      return CustomDialog.getDialog("Uyarı", "Kullanıcı Boş Girilmez", "Kapat");
    } else if (passwordu.text == "") {
      return CustomDialog.getDialog(
          "Uyarı", "Şifre Alanı Boş Girilmez", "Kapat");
    } else {
      status.value = RxStatus.loading();
      loginModel = (await apiRepository.getLogin(user.text, passwordu.text))!;
      await storage_token.write("token2", loginModel.token.toString());
      await storage_token.write("user_name", user.text);
      await storage_token.write("select_company", dropdownvalue.value);
      status.value = RxStatus.success();
      await closedTextField();
      await pinCodeChange();
    }
  }

  pinCodeChange() {
    if (storage_token.read("pin_code") != null) {
      return Get.toNamed(Routes.HOME);
    } else {
      return Get.toNamed(Routes.CREATEPINCODE);
    }
  }

  closedTextField() {
    user.clear();
    passwordu.clear();
    print("Login user ve password TextFiel Temizlendi");
  }
}
