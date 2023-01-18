// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_leaves_detail/my_leaves_detail_controller.dart';
import 'package:sun_ik_app/app/widgets/my_leaves_details_widgets.dart';
import 'package:sun_ik_app/utils/const.dart';

class MyLeavesDetailView extends GetView<MyLeavesDetailController> {
  const MyLeavesDetailView({super.key});

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
          'My Leaves Detail',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w, top: 1.h),
                  child: Text(
                    "Leave Type",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                LeaveTypeDropDownMenu(),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Leave Start Date",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 100.w,
                  margin: EdgeInsets.symmetric(vertical: 1.7.h),
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Leave Start Hour",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 100.w,
                  margin: EdgeInsets.symmetric(vertical: 1.7.h),
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Leave Period",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 100.w,
                  margin: EdgeInsets.symmetric(vertical: 1.7.h),
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Adress / Phone at Leave",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.7.h),
                  child: const TextFormFieldLeavesWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w,top: 1.7.h),
                  child: Text(
                    "Descripton",
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 2.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.7.h),
                  child: const TextFormFieldLeavesWidget(),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 6.h,
                    width: 100.w,
                    margin:
                        EdgeInsets.only(top: 8.h, left: 10.w,right: 10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        color: const Color(0xffEF3E52)),
                    child: Center(
                        child: Text(
                      "Apply",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 2.2.h,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


