// ignore_for_file: unrelated_type_equality_checks, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../api/api_repository.dart';
import '../../models/login/login_model.dart';
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  ApiRepository apiRepository;
  LoginController({required this.apiRepository});

  //
  GetStorage storage_token = GetStorage();

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
    await storage_token.write("token2", loginModel.token.toString());
    await storage_token.write("user_name", user.text);
    status.value = RxStatus.success();
    await pinCodeChange();
  }

  pinCodeChange() {
    if (storage_token.read("pin_code") != null) {
      return Get.toNamed(Routes.HOME);
    } else {
      return Get.toNamed(Routes.CREATEPINCODE);
    }
  }
}
