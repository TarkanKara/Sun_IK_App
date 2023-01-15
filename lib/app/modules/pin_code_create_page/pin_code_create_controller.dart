// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';

class PinCodeCreateController extends GetxController {
  // text editing controllers
  TextEditingController newPinCodeController = TextEditingController();
  TextEditingController newRepeatPinCodeController = TextEditingController();

  //
  GetStorage storage = GetStorage();



  createPinConde() {
    if (newPinCodeController.text.length < 6) {
      return Get.defaultDialog(
          title: "Uyarı",
          content: const Text("Şifre Altı Karekterden az Olamaz"),
          cancel: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Kapat")));
    } else if (newPinCodeController.text != newRepeatPinCodeController.text) {
      return Get.defaultDialog(
          title: "Uyarı",
          content: const Text("Şifreler Birbiri ile Eşleşmiyor."),
          cancel: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Kapat")));
    } else {
      storage.write("pin_code", "${newPinCodeController.text}");
      return Get.offAllNamed(Routes.PIN_LOGIN);
    }
  }
}
