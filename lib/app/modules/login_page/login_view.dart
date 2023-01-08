import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';
import '../../widgets/login_widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xffcf3842),
      ),
      body: SingleChildScrollView(
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
                    Row(//dil seçimi
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
                      top: 22.h,
                      child: Container(
                        height: 60.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffef3e52),
                          borderRadius: BorderRadius.circular(15.w),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 3.w, top: 8.h, right: 3.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: .5.h, top: 1.7.h),
                                child: Text(
                                    "Please login to use the mobile application",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 1.7.h,
                                  left: 1.w,
                                  right: 1.w,
                                ),
                                child: Text(
                                  "I don't have a computer password. I want to get a password via SMS",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const DropDownMenu(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.h),
                                child: const LoginTextWidget(
                                  hintText: "UserName",
                                  //labelText: "UserName",
                                  suffixIcon: Icon(
                                    Icons.abc,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              LoginTextWidget(
                                //labelText: "Password",
                                hintText: "Password",
                                suffixIcon: Obx(
                                  () => GestureDetector(
                                    onTap: () {
                                      controller.visible();
                                    },
                                    child: Icon(
                                      controller.visibleIcon(),
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.h),
                                child: const LoginButton(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.h),
                                child: RichText(
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
                                      color: Color(0xffeceff1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ])),
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
                      margin: EdgeInsets.only(top: 5.h, left: 25.w),
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
    );
    //
  }
}
