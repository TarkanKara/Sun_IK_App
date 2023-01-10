import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = false.obs;
  RxString password = "".obs;
  RxBool switchControl = true.obs;

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
    if (isPasswordHidden == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}
