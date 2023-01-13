import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/language_page/language_controller.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child:
                  Icon(Icons.arrow_back_ios, size: 3.h, color: Colors.white)),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Language",
            style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 3.2.h,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xff94A3B8)),
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          height: 100.h,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/language/login_background.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.h,
                  width: 100.w,
                  // margin: EdgeInsets.only(top: 2.h),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 3.h),
                    itemCount: controller.myAppLanguage.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 9.h,
                        width: 100.w,
                        margin: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            color: Colors.white,
                            border: Border.all(
                              width: .5.w,
                              color: const Color(0xff94A3B8),
                            )),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 15.h,
                              width: 30.w,
                              child: Image.memory(
                                const Base64Decoder().convert(
                                  controller
                                      .myAppLanguage.data![index].lANGUAGELOGO
                                      .toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.w, top: 1.2.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller
                                        .myAppLanguage.data![index].lANGUAGENAME
                                        .toString(),
                                    /* controller.languages[index]["name"], */
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 2.7.h,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: .3.h,
                                  ),
                                  Text(
                                    controller
                                        .myAppLanguage.data![index].lANGUAGECODE
                                        .toString(),
                                    /* controller.languages[index]["subTitle"], */
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 1.7.h,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );

                      //
                      /* Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: //burada obx olacak checkbox için
                            ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.w)),
                          tileColor: const Color(0xffeeeeee),
                          onTap: () {
                            // controller.checkBoxControl();
                          },
                          title: Text(
                            controller.languages[index]["name"],
                            style: GoogleFonts.inter(color: Colors.black),
                          ),
                          subtitle: Text(
                              controller.languages[index]["subTitle"],
                              style: GoogleFonts.inter()),
                          /* trailing: Checkbox(
                            onChanged: (value) {
                              controller.languages[index]["isCheck"] == true
                                  ? controller.languages[index]["isCheck"] =
                                      false
                                  : controller.languages[index]["isCheck"] =
                                      true;
                              controller.languages.refresh();
                              //controller.checkBoxControl(index);
                            },
                            value: controller.languages[index]["isCheck"],
                          ), */
                          leading: Container(
                            height: 15.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        controller.languages[index]["flag"]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ); */
                      //
                      /* Container(
                        height: 8.h,
                        width: 100.w,
                        margin: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            color: Colors.white,
                            border: Border.all(
                              width: .5.w,
                              color: const Color(0xff94A3B8),
                            )),
                      ); */
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//eskisi
        /* Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Container(
                height: 5.5.h,
                width: 55.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    color: const Color(0xffad0327)),
                child: Center(
                  child: Text(
                    "Language Menu",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Container(
              height: 54.h,
              width: 100.w,
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: ListView.builder(
                itemCount: controller.languages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: //burada obx olacak checkbox için
                        ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.w)),
                      tileColor: const Color(0xffeeeeee),
                      onTap: () {
                        // controller.checkBoxControl();
                      },
                      title: Text(
                        controller.languages[index]["name"],
                        
                        style: GoogleFonts.inter(color: Colors.black),
                      ),
                      subtitle: Text(controller.languages[index]["subTitle"],
                          style: GoogleFonts.inter()),
                      /* trailing: Checkbox(
                            onChanged: (value) {
                              controller.languages[index]["isCheck"] == true
                                  ? controller.languages[index]["isCheck"] =
                                      false
                                  : controller.languages[index]["isCheck"] =
                                      true;
                              controller.languages.refresh();
                              //controller.checkBoxControl(index);
                            },
                            value: controller.languages[index]["isCheck"],
                          ), */
                      leading: Container(
                        height: 15.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    controller.languages[index]["flag"]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.returnButton();
              },
              child: Container(
                height: 5.5.h,
                width: 30.w,
                margin: EdgeInsets.only(top: 2.h),
                decoration: BoxDecoration(
                    color: const Color(0xffad0327),
                    borderRadius: BorderRadius.circular(2.w)),
                child: Padding(
                  padding: EdgeInsets.only(left: 5.6.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 2.2.h,
                        color: Colors.white,
                      ),
                      Text(
                        "Return",
                        style: GoogleFonts.inter(
                            fontSize: 2.2.h,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ), 
        );
  }
}
  }*/