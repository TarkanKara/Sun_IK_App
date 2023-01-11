import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  RxString dropdownvalue = "Select Company".obs;
  RxBool isPasswordHidden = false.obs;
  RxString password = "".obs;
  RxBool switchControl = true.obs;
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
    if (isPasswordHidden == false) {
      return Icons.visibility;
    } else {
      return Icons.visibility_off;
    }
  }

  isAuthCorrect() {
    if (user.text == "user" && passwordu.text == "Vbt1993.") {
      return Get.toNamed(Routes.HOME);
    } else {
      return Get.defaultDialog(
        title: "Hata",
        titleStyle: GoogleFonts.inter(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 3.h),
        content: Column(
          children: [
            Text("Kullanıcı bilgileri yanlış girildi.",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 2.5.h)),
            Text("Bilgilerinizi kontrol ediniz.",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 2.5.h)),
          ],
        ),
        backgroundColor: const Color(0xffcf3842),
      );
    }
  }
}
