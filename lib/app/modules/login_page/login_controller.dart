import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString dropdownvalue = "Select Company".obs;

  asd(String value) {
    dropdownvalue.value = value;
  }

  RxList<String> company = [
    "Select Company",
    "Sun",
  ].obs;
}
