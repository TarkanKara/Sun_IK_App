import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString dropdownvalue = "Select Company".obs;
  var isPasswordHidden = false.obs;
  RxString password = "".obs;

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
    if (isPasswordHidden == true) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }
}
