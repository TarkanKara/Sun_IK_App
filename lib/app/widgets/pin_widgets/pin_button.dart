import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/const.dart';

class PinButton extends StatelessWidget {
  double width;
  double height;
  String buttonText;
  Callback buttonClick;
  PinButton(
      {super.key,
      required this.width,
      required this.height,
      required this.buttonText,
      required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonClick,
      child: Container(
        width: 90.w,
        height: 7.h,
        decoration: BoxDecoration(
            color: Const.STATUSBARCOLOR, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          buttonText,
          style: GoogleFonts.inter(
              color: Colors.white, fontSize: 2.3.h, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
