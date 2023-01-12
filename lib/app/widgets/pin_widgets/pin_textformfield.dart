// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/const.dart';

class PinTextFormField extends StatelessWidget {
  double width;
  double height;
  TextEditingController controller;
  String hintText;
  PinTextFormField(
    {super.key,required this.width,required this.height,required this.controller,required this.hintText}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: const Border.fromBorderSide(
              BorderSide(color: Color(0xffD1D4D1)))),
      child: TextFormField(
        controller: controller,
          decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
            color: Const.ACIKLAMATEXTCOLOR,
            fontSize: 2.h,
            fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
        border: InputBorder.none,
      )),
    );
  }
}
