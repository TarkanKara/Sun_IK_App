// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';

import '../../widgets/login_widget.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xffcf3842),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            SizedBox(
              height: 88.h,
              width: 100.w,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 3.5.h,
                        width: 19.52.w,
                        margin: EdgeInsets.only(left: 6.w, bottom: 30.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffbdbdbd),
                            borderRadius: BorderRadius.circular(1.5.w)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.5.w),
                              child: Text(
                                "TR",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.1.w,
                            ),
                            Image.asset("assets/images/turk_bayrak.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    //textformfield container
                    left: 3.w,
                    top: 20.h,
                    child: Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffef3e52),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 3.w, top: 9.h, right: 3.w),
                        child: Obx(() => Column(
                              children: [
                                //
                                DropdownButton<String>(
                                  value: controller.dropdownvalue.value,
                                  icon: Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.w, bottom: .4.h),
                                      child: const Icon(
                                          Icons.arrow_drop_down_sharp)),
                                  style:
                                      const TextStyle(color: Color(0xff125a64)),
                                  onChanged: (String? value) {
                                    controller.dropdownvalue.value = value!;
                                  },
                                  items: controller.company
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.w, bottom: .4.h),
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 2.h,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                //
                                LoginTextWidget(
                                  hintText: "sfgsedf",
                                ),
                                LoginTextWidget(
                                  hintText: "asldjfşalsjm",
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                  Container(
                    //logo
                    height: 25.h,
                    width: 37.w,
                    margin: EdgeInsets.only(top: 3.h, left: 25.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffebeae8).withOpacity(0.5),
                          spreadRadius: .5.w,
                          blurRadius: .5.w,
                          offset: Offset(.2.h, .2.w),
                        ),
                      ],
                      border: Border.all(
                          color: const Color(0xffebeae8), width: .7.w),
                    ),
                    child: Image.asset(
                      "assets/images/ic_sun_logo.PNG",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //
  }
}

 /* DropdownButton<String> dropDownGrade() {
  return DropdownButton<String>(
    value: controller.dropdownvalue.value,
    icon: Padding(
        padding: EdgeInsets.only(left: 8.w, bottom: .4.h),
        child: const Icon(Icons.arrow_drop_down_sharp)),

    //dropdownColor: Colors.green,
    style: const TextStyle(color: Color(0xff125a64)),
    onChanged: (String? value) {
      // This is called when the user selects an item.

      //controller.dropdownvalue.value = value!;
    },
    items: controller.grade.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, bottom: .4.h),
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 2.h,
            ),
          ),
        ),
      );
    }).toList(),
  );
}  */
