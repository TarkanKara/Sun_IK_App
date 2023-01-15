// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/pin_login_page/pin_login_controller.dart';

class PinLoginTextWidget extends GetView<PinLoginController> {
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController? controllers;
  RxBool obscureText;
  bool readOnlyFalse;
  final TextInputType number;

  PinLoginTextWidget({
    Key? key,
    required this.number,
    required this.hintText,
    required this.obscureText,
    required this.controllers,
    required this.readOnlyFalse,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        keyboardType: number,
        controller: controllers,
        obscureText: obscureText.value,
        //enableInteractiveSelection: false,
        //enabled: false,
        readOnly: readOnlyFalse,
        style: GoogleFonts.inter(
            color: const Color(0xff616161),
            fontWeight: FontWeight.w500,
            fontSize: 2.h),
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.inter(color: const Color(0xff616161)),
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide: BorderSide(color: const Color(0xffeeeeee), width: .6.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide: BorderSide(color: const Color(0xffeeeeee), width: .6.w),
          ),
        ),
      ),
    );
  }
}

//PIN dropdown menu
class PinDropDownMenu extends GetView<PinLoginController> {
  const PinDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 100.w,
        margin: EdgeInsets.only(bottom: 2.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(color: const Color(0xffeeeeee), width: .6.w),
        ),
        child: DropdownButton<String>(
          value: controller.dropdownvalue.value,
          icon: Padding(
              padding: EdgeInsets.only(left: 35.w, bottom: .4.h),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 3.h,
                color: const Color(0xff616161),
              )),
          underline: const SizedBox(),
          style: const TextStyle(color: Colors.black),
          onChanged: (String? value) {
            controller.dropdownvalue.value = value!;
          },
          items:
              controller.company.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, bottom: .4.h),
                child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 2.h,
                      color: const Color(0xff616161)),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class PinLoginButton extends StatelessWidget {
  final Callback? callback;
  const PinLoginButton({super.key, this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size(100.w, 5.h),
            backgroundColor: Colors.white),
        child: Center(
          child: Text(
            "LOGIN",
            style: GoogleFonts.inter(
                color: const Color(0xffcf3842),
                fontWeight: FontWeight.bold,
                fontSize: 2.h,
                letterSpacing: 1.w),
          ),
        ));
  }
}
