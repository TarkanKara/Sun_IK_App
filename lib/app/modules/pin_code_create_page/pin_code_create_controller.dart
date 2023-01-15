// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/dialog.dart';
import '../../routes/app_pages.dart';

class PinCodeCreateController extends GetxController {
  // text editing controllers
  TextEditingController newPinCodeController = TextEditingController();
  TextEditingController newRepeatPinCodeController = TextEditingController();

  //
  GetStorage storage = GetStorage();

  //createPinConde
  createPinConde() {
    if (newPinCodeController.text.length < 6) {
      return CustomDialog.getDialog(
          "Uyarı", "Şifre Altı Karekterden az Olamaz", "Kapat");
    } else if (newPinCodeController.text != newRepeatPinCodeController.text) {
      return CustomDialog.getDialog(
          "Uyarı", "Şifreler Birbiri ile Eşleşmiyor.", "Kapat");
    } else {
      storage.write("pin_code", "${newPinCodeController.text}");
      return Get.offAllNamed(Routes.PIN_LOGIN);
    }
  }
}
