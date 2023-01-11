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
      backgroundColor: const Color(0xffEF4D58),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: const Color(0xffEF4D58),
      ),
      body: Padding(
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
