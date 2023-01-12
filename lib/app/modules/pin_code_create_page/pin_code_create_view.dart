// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/pin_code_create_page/pin_code_create_controller.dart';
import 'package:sun_ik_app/app/widgets/pin_widgets/pin_button.dart';
import 'package:sun_ik_app/app/widgets/pin_widgets/pin_textformfield.dart';
import 'package:sun_ik_app/utils/const.dart';

class PinCodeCreateView extends GetView<PinCodeCreateController> {
  const PinCodeCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 217, 217),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Const.STATUSBARCOLOR),
        elevation: 0,
        toolbarHeight: 6.h,
        leading: IconButton(
          onPressed: () {},
          icon : const Icon(Icons.arrow_back_rounded),
          color: Color(0xff2C3E50),
        ),
        centerTitle: true,
        title: Text(
          'Pin Code Oluşturma',
          style: GoogleFonts.inter(
              color: const Color(0xff10130F),
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 3.h,
                  height: 3.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/pin_assets/ic_uyari.png'))),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 72.w,
                  height: 5.h,
                  child: Text(
                    'Pin Code 6 karakterden az olamaz.',
                    style: GoogleFonts.inter(
                        color: Const.ACIKLAMATEXTCOLOR,
                        fontSize: 2.h,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          PinTextFormField(
            controller: controller.newPinCodeController,
            width: 90.w,
            height: 7.h,
            hintText: 'Yeni Pin Code',
          ),
          SizedBox(
            height: 2.h,
          ),
          PinTextFormField(
            controller: controller.newRepeatPinCodeController,
            width: 90.w,
            height: 7.h,
            hintText: 'Yeni Pin Code Tekrar',
          ),
          SizedBox(
            height: 2.h,
          ),
          PinButton(
            width: 90.w,
            height: 7.h,
            buttonText: 'Şifre Oluştur',
            buttonClick: () {},
          )
        ],
      ),
    );
  }
}
