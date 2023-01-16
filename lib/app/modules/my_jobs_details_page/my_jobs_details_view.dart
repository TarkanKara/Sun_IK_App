import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          'My Requests',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text("18.06.2021 14:08"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text("Requestor"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: Text("Status: Pending"),// Status sabit pending değişecek ${}
          ),

        ],
      ),
    );
  }
}