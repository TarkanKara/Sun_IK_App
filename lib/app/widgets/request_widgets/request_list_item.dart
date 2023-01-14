// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/const.dart';

class RequestListItem extends StatelessWidget {
  String imageAsset;
  String tarihVeSaat;
  String tur;
  String talepNo;
  String atananKisi;
  String aciklama;
  String durum;
  RequestListItem({
    super.key,
    required this.imageAsset,
    required this.tarihVeSaat,
    required this.tur,
    required this.talepNo,
    required this.atananKisi,
    required this.aciklama,
    required this.durum,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.5.h,
      width: 100.w,
      margin: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                blurRadius: 3,
                color: Colors.grey,
                spreadRadius: 0,
                offset: Offset(0, 1))
          ]),
      child: Padding(
        padding: EdgeInsets.all(.2.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    height: 7.5.h,
                    width: 15.w,
                    margin: EdgeInsets.only(top: 1.h),
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.2.h),
                      child: Text(tarihVeSaat,
                          style: GoogleFonts.inter(
                              color: Const.ACIKLAMATEXTCOLOR, fontSize: 1.8.h)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Text(tur,
                          style: GoogleFonts.inter(
                              color: Const.BASLIKTEXTCOLOR,
                              fontSize: 2.2.h,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              //ilk row talep no olan
              padding: EdgeInsets.only(top: 1.h, left: 2.6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Talep No',
                    style: GoogleFonts.inter(
                        fontSize: 2.h,
                        color: Const.ACIKLAMATEXTCOLOR,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Açıklama',
                    style: GoogleFonts.inter(
                        fontSize: 2.h,
                        color: Const.ACIKLAMATEXTCOLOR,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              // 1. row'un bilgileri
              padding: EdgeInsets.only(top: 1.h, left: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    talepNo,
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 1.9.h),
                  ),
                  SizedBox(width: 19.w),
                  Text(
                    aciklama,
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 1.9.h),
                  )
                ],
              ),
            ),
            Padding(
              //atan kişi row
              padding: EdgeInsets.only(top: 1.h, left: 2.6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atanan Kişi',
                    style: GoogleFonts.inter(
                        fontSize: 2.h,
                        color: Const.ACIKLAMATEXTCOLOR,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    'Durum',
                    style: GoogleFonts.inter(
                        fontSize: 2.h,
                        color: Const.ACIKLAMATEXTCOLOR,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              // 2. row'un bilgileri
              padding: EdgeInsets.only(top: .5.h, left: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    atananKisi,
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 1.9.h),
                  ),
                  SizedBox(width: 26.w),
                  Text(
                    durum,
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w700,
                        fontSize: 1.9.h),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
