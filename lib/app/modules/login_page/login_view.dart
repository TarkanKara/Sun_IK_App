// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';
import '../../routes/app_pages.dart';
import '../../widgets/login_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xffff6c6d),
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
                  height: 88.h,
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
                        top: 19.h,

                        child: Container(
                          height: 67.h,
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
                                left: 3.w, top: 11.h, right: 3.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: .5.h, top: 1.7.h, right: 10.w),
                                  child: Text(
                                      "Mobil uygulamaya ile giriş yapınız.",
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 2.h)),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 60.w,
                                      margin: EdgeInsets.only(
                                        bottom: .5.h,
                                        left: 1.w,
                                        right: 1.w,
                                      ),
                                      child: Text(
                                        "Bilgisayar şifrem yok. SMS ile şifresi almak istiyorum.",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 1.8.h),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: .5.h),
                                      child: Obx(() => Switch(
                                            value:
                                                controller.switchControl.value,
                                            activeColor:
                                                const Color(0xff00c853),
                                            activeTrackColor:
                                                const Color(0xff00c853),
                                            inactiveThumbColor:
                                                const Color(0xffeeeeee),
                                            inactiveTrackColor:
                                                const Color(0xffc2c2c2),
                                            onChanged: (value) {
                                              controller.switchControl.value =
                                                  value;
                                            },
                                          )),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1.h, horizontal: 2.w),
                                  child: const DropDownMenu(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 2.h, left: 2.w, right: 2.w),
                                  child: LoginTextWidget(
                                    controllers: controller.user,
                                    obscureText: false.obs,
                                    hintText: "Kullanıcı Adı",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 1.h, left: 2.w, right: 2.w),
                                  child: LoginTextWidget(
                                    controllers: controller.passwordu,
                                    obscureText: controller.isPasswordHidden,
                                    hintText: "Şifre",
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
                                    padding: EdgeInsets.only(
                                        top: 3.h, left: 2.w, right: 2.w),
                                    child: LoginButton(
                                      callback: () {
                                        print("object");
                                        controller.currentLogin();
                                      },
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 1.5.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [],
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
