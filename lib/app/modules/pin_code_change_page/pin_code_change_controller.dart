import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/dialog.dart';
import '../../routes/app_pages.dart';

class PinCodeChangeController extends GetxController {
  // Controllers
  TextEditingController currentPinCodeController = TextEditingController();
  TextEditingController newPinCodeController = TextEditingController();
  TextEditingController newRepeatPinCodeController = TextEditingController();

  GetStorage storage = GetStorage();

  changePinCode() {
    if (currentPinCodeController.text != storage.read("pin_code")) {
      CustomDialog.getDialog("HATA", "Eski pin kodu Hatalı", "Kapat");
    } else {
      if (currentPinCodeController.text == newPinCodeController.text) {
        CustomDialog.getDialog(
            "UYARI", "Yeni Şifre ile Eski şifre Aynı Olamaz", "Kapat");
      } else {
        if (newPinCodeController.text.length < 6) {
          return CustomDialog.getDialog(
              "Uyarı", " Yeni Şifre Altı Karekterden az Olamaz", "Kapat");
        } else if (newPinCodeController.text !=
            newRepeatPinCodeController.text) {
          return CustomDialog.getDialog(
              "Uyarı", " Yeni Şifreler Birbiri ile Eşleşmiyor.", "Kapat");
        } else {
          storage.write("pin_code", newPinCodeController.text);
          return Get.offAllNamed(Routes.PIN_LOGIN);
        }
      }
    }
  }
}
