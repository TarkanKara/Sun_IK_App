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
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text("LANGUAGES"),
      ),
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
                  child: Obx(
                    () => controller.status.value.isSuccess
                        ? ListView.builder(
                            padding: EdgeInsets.only(top: 3.h),
                            itemCount: 8,
                            //controller.myAppLanguage.data!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 9.h,
                                width: 100.w,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 1.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.w),
                                    color: Colors.white60,
                                    border: Border.all(
                                      width: .5.w,
                                      color: const Color(0xff94A3B8),
                                    )),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 14.5.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1.w),
                                          image: DecorationImage(
                                              image: AssetImage(controller
                                                  .languages[index]["flag"]),
                                              fit: BoxFit.cover)),
                                    ),

                                    // Image.memory(const Base64Decoder().convert(controller.myAppLanguage.data![index].lANGUAGELOGO.toString()),fit: BoxFit.cover),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.w, top: 1.2.h),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.myAppLanguage
                                                .data![index].lANGUAGENAME
                                                .toString(),
                                            /* controller.languages[index]["name"], */
                                            style: GoogleFonts.inter(
                                                color: Colors.black,
                                                fontSize: 2.3.h,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: .7.h,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: .3.w),
                                            child: Text(
                                              controller.myAppLanguage
                                                  .data![index].lANGUAGECODE
                                                  .toString(),
                                              /* controller.languages[index]["subTitle"], */
                                              style: GoogleFonts.inter(
                                                  color: Colors.black,
                                                  fontSize: 1.5.h,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                        : const Center(child: CircularProgressIndicator()),
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
