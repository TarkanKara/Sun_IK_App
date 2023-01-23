// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_leaves_detail/my_leaves_detail_controller.dart';
import 'package:sun_ik_app/app/widgets/my_leaves_details_widgets.dart';
import 'package:sun_ik_app/utils/const.dart';
import '../../../utils/date_convert.dart';

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
          'İzin Talebi',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login/login_background.jpg"),
                  fit: BoxFit.cover)),
          child: Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h),
              child: Obx(
                () => controller.status.value.isSuccess
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.w, top: 1.h),
                            child: Text(
                              "İzin Tipi",
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
                              "İzin Başlangıç Tarihi",
                              style: GoogleFonts.inter(
                                  color: Const.BASLIKTEXTCOLOR,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2.h),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.showDatePickerr1();
                            },
                            child: Container(
                              height: 6.h,
                              width: 100.w,
                              margin: EdgeInsets.symmetric(vertical: 1.7.h),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(1.5.w)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.5.w, top: 2.h),
                                child: Text(
                                  "${DateTimeConverTo.compareToDateYMD(controller.selectedDate.toString())}",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Text(
                              "İzin Bitiş Tarihi",
                              style: GoogleFonts.inter(
                                  color: Const.BASLIKTEXTCOLOR,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2.h),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.showDatePickerr2();
                            },
                            child: Container(
                              height: 6.h,
                              width: 100.w,
                              margin: EdgeInsets.symmetric(vertical: 1.7.h),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(1.5.w)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.5.w, top: 2.h),
                                child: Text(DateTimeConverTo.compareToDateYMD(
                                    controller.selectedDate2.toString())),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Text(
                              "İşe Başlama Tarihi",
                              style: GoogleFonts.inter(
                                  color: Const.BASLIKTEXTCOLOR,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2.h),
                            ),
                          ),
                          Container(
                            //+ 1 gün
                            height: 6.h,
                            width: 100.w,
                            margin: EdgeInsets.symmetric(vertical: 1.7.h),
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(1.5.w)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.5.w, top: 2.h),
                              child: Text(DateTimeConverTo.compareToDateYMD(
                                  controller.vacationEnd().toString())),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Text(
                              "İzin Gün Sayısı",
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
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(1.5.w)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 3.5.w, top: 2.h),
                              child: Text(controller.vacationDays().toString()),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: Text(
                              "İzini Geçireceği Adres/Telefon",
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
                            padding: EdgeInsets.only(left: 2.w, top: 1.7.h),
                            child: Text(
                              "Açıklama",
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
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: 6.h,
                              width: 100.w,
                              margin: EdgeInsets.only(
                                  top: 3.h,
                                  left: 10.w,
                                  right: 10.w,
                                  bottom: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.w),
                                  color: const Color(0xffEF3E52)),
                              child: Center(
                                  child: Text(
                                "Başvuru yap",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 2.2.h,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ],
                      )
                    : Expanded(
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.only(bottom: 20.h),
                          child: CircularProgressIndicator(),
                        )),
                      ),
              )),
        ),
      ),
    );
  }
}
