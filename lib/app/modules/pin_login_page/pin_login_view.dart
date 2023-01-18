// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/pin_login_page/pin_login_controller.dart';
import 'package:sun_ik_app/utils/dialog.dart';

import '../../../utils/const.dart';
import '../../routes/app_pages.dart';
import '../../widgets/pin_login_widget.dart';

class PinLoginView extends GetView<PinLoginController> {
  const PinLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xffff6c6d),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Const.STATUSBARCOLOR),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login/login_background.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 2.h),
                SizedBox(
                  height: 90.h,
                  width: 100.w,
                  child: Stack(
                    children: [
                      Row(
                        //dil seçimi
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.LANGUAGE);
                            },
                            child: Container(
                              height: 3.5.h,
                              width: 19.52.w,
                              margin: EdgeInsets.only(left: 6.w, bottom: 30.h),
                              decoration: BoxDecoration(
                                color: const Color(0xffbdbdbd),
                                borderRadius: BorderRadius.circular(1.2.w),
                              ),
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
                                  SizedBox(
                                    height: 3.5.h,
                                    width: 11.w,
                                    child: Image.asset(
                                      "assets/images/turk_bayrak.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      //dil seçimi biter
                      Positioned(
                        //textformfield container
                        left: 2.w,
                        top: 17.h,
                        child: Container(
                          height: 64.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffef3e52),
                            borderRadius: BorderRadius.circular(4.w),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xffebeae8).withOpacity(0.5),
                                spreadRadius: .5.w,
                                blurRadius: .5.w,
                                offset: Offset(5.h, 5.w),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 3.w, top: 10.h, right: 3.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 1.5.h, bottom: 1.h, left: 9.w),
                                  child: SizedBox(
                                    width: 75.w,
                                    child: Text(
                                        "Mobil uygulamaya ile giriş yapınız.",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 1.8.h)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.5.h, bottom: 1.h),
                                  child: const PinDropDownMenu(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.h),
                                  child: PinLoginTextWidget(
                                    number: TextInputType.text,
                                    readOnlyFalse: true,
                                    controllers: controller.user,
                                    obscureText: false.obs,
                                    hintText: controller.user_name.value,
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        //sayfa değiştirme eklenecek
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: 1.8.w, top: 1.7.h),
                                        child: GestureDetector(
                                          onTap: () {
                                            CustomDialog.getDialog(
                                                "Uyarı",
                                                "Çıkış Yapmak İstediğinizden Eminmisiniz",
                                                "Kapat",
                                                widget: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.red),
                                                    onPressed: () {
                                                      controller.resetStorage();

                                                      Get.offAllNamed(
                                                        Routes.SPLASH,
                                                      );
                                                    },
                                                    child: Text("Çıkış")));
                                          },
                                          child: Text(
                                            "Değiştir",
                                            style: GoogleFonts.inter(
                                                fontSize: 2.h,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 1.h),
                                  child: PinLoginTextWidget(
                                    number: TextInputType.number,
                                    readOnlyFalse: false,
                                    controllers: controller.passwordu,
                                    obscureText: controller.isPasswordHidden,
                                    hintText: "PIN Kodu",
                                    suffixIcon: Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                          controller.visible();
                                        },
                                        child: Icon(
                                          controller.visibleIcon(),
                                          color: const Color(0xff616161),
                                          size: 2.5.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: PinLoginButton(
                                    callback: () {
                                      controller.pinLoginRouteName();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(Routes.CHANGEPINCODE);
                                        },
                                        child: Text(
                                          "PIN'i değiştir",
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 1.7.h),
                                        ),
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                          text: 'Test',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' v.1.1.3',
                                          style: GoogleFonts.inter(
                                            color: const Color(0xffeceff1),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ])),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        //logo
                        height: 25.h,
                        width: 37.w,
                        margin: EdgeInsets.only(top: 5.h, left: 26.w),
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
        ),
      ),
    );
    //
  }
}
