// ignore_for_file: non_constant_identifier_names, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sun_ik_app/app/modules/home_page/home_controller.dart';
import 'package:sun_ik_app/utils/dialog.dart';

import '../../routes/app_pages.dart';

class PinLoginController extends GetxController {
  HomeController homeController =
      Get.put(HomeController(apiRepository: Get.find()));
  //
  GetStorage getStorage = GetStorage();

  //
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = false.obs;
  RxString password = "".obs;
  RxBool switchControl = false.obs;
  RxString user_name = "".obs;
  RxString select_company = "".obs;

  //TextEditingController
  TextEditingController user = TextEditingController();
  TextEditingController passwordu = TextEditingController();
  //
  @override
  void onInit() {
    super.onInit();
    user_name.value = getStorage.read("user_name");
    select_company.value = getStorage.read("select_company");
    print("GetStore Pin Code : ${getStorage.read("pin_code")}");
    print("GetStorage UserName : ${user_name.value}");
    print("GetStorage SelectCompany : ${select_company.value}");
  }

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

  //pinLoginRouteName
  pinLoginRouteName() {
    if (passwordu.text != "") {
      if (passwordu.text == getStorage.read("pin_code")) {
        passwordu.clear();
        return Get.offAllNamed(Routes.HOME);
      } else {
        return CustomDialog.getDialog("Uyarı", "Hatalı Pin Girdiniz", "Kapat");
      }
    } else {
      return CustomDialog.getDialog(
          "Uyarı", "Pin Alanı Boş Girilemez", "Kapat");
    }
  }

  resetStorage() async {
    await getStorage.remove("token2");
    await getStorage.remove("pin_code");
    await getStorage.remove("user_name");
    await getStorage.remove("select_company");
    await closedModel();
  }

  closedModel() {
    homeController.status.value = RxStatus.loading();
    homeController.infoModel = null;
    homeController.myProfileModel = null;
  }
}