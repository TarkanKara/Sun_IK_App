// ignore_for_file: non_constant_identifier_names, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class PinLoginController extends GetxController {
  //
  GetStorage getStorage = GetStorage();

  //
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = false.obs;
  RxString password = "".obs;
  RxBool switchControl = false.obs;
  RxString user_name = "".obs;

  //TextEditingController
  TextEditingController user = TextEditingController();
  TextEditingController passwordu = TextEditingController();
  //
  @override
  void onInit() {
    super.onInit();
    user_name.value = getStorage.read("user_name");
    print("GetStore Pin Code : ${getStorage.read("pin_code")}");
    print("GetStorage UserName : $user_name");
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

  pinLoginRouteName() {
    if (passwordu.text != "") {
      if (passwordu.text == getStorage.read("pin_code")) {
        return Get.offAllNamed(Routes.HOME);
      } else {
        return Get.defaultDialog(
            title: "Uyarı",
            content: const Text("Hatalı Pin Girdiniz"),
            cancel: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Kapat")));
      }
    } else {
      return Get.defaultDialog(
          title: "Uyarı",
          content: const Text("Pin Alanı Boş Girilemez"),
          cancel: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Kapat")));
    }
  }
}
