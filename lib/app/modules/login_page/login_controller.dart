// ignore_for_file: unrelated_type_equality_checks, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../api/api_repository.dart';
import '../../models/login/login_model.dart';

class LoginController extends GetxController {
  ApiRepository apiRepository;
  LoginController({required this.apiRepository});

  //
  GetStorage storage_token = GetStorage();
 

  @override
  void onInit() {
    storage_token.write("token2", "");
    super.onInit();
  }

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
    storage_token.write("token2", loginModel.token.toString());
    status.value = RxStatus.success();
  }
}
