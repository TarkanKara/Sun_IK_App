import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                    color: const Color(0xffb6072f)),
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
              height: 80.h,
              width: 100.w,
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.w)),
                      tileColor: Color(0xffeeeeee),
                      onTap: () {},
                      title: Text(
                        "Turkish",
                        style: GoogleFonts.inter(color: Colors.black),
                      ),
                      subtitle: Text("Turkish", style: GoogleFonts.inter()),
                      trailing: Checkbox(
                        onChanged: (value) {},
                        value: false,
                      ),
                      leading: Container(
                        height: 15.h,
                        width: 22.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  controller.flags[index],
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
