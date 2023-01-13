import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/const.dart';

class RequestController extends GetxController {
  RxString filterIsim = "Tümü".obs;

  getFilter() {
    Get.defaultDialog(
      contentPadding: EdgeInsets.only(bottom: 2.5.h),
        titleStyle: GoogleFonts.inter(
          fontSize: 0
        ),
        title: '',
        content: Container(),
        backgroundColor: Colors.white,
        actions: [
          Column(
            children: [
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Tümü";
                    Get.back();
                  },
                  child: Text('Tümü',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500),)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Süreç Devam Ediyor / Revize Edildi";
                    Get.back();
                  },
                  child:  Text('Süreç Devam Ediyor / Revize Edildi',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Süreç Devam Ediyor";
                    Get.back();
                  },
                  child:  Text('Süreç Devam Ediyor',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Onaylandı";
                    Get.back();
                  },
                  child:  Text('Onaylandı',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Reddedildi";
                    Get.back();
                  },
                  child:  Text('Reddedildi',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Revize Edildi";
                    Get.back();
                  },
                  child:  Text('Revize Edildi',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Geri Gönderildi";
                    Get.back();
                  },
                  child:  Text('Geri Gönderildi',style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR,fontWeight: FontWeight.w500))),
                  Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Vazgeç";
                    Get.back();
                  },
                  child:  Text('Vazgeç',style: GoogleFonts.inter(color: Colors.black,fontWeight: FontWeight.w700))),
            ],
          )
        ]);
  }
}
