import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_jobs_details_page/my_jobs_details_controller.dart';

class MyJobsDetailsView extends GetView<MyJobsDetailsController> {
  const MyJobsDetailsView({super.key});

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
        title: Text(
          'İşlerim Detay',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login/login_background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: const Text("18.06.2021 14:08"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: const Text("Requestor"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: const Text(
                  "Status: Pending"), // Status sabit pending değişecek ${}
            ),
          ],
        ),
      ),
    );
  }
}
