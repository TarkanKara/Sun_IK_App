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
      width: 90.w,
      height: 23.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Const.MENUCOLOR,
          boxShadow: const [
            BoxShadow(
                blurRadius: 3,
                color: Colors.grey,
                spreadRadius: 0,
                offset: Offset(0, 1))
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 1.h,
          ),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Image.asset(
                        imageAsset,
                        scale: .2.h,
                      )),
                  Flexible(
                      flex: 3,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.h,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(tarihVeSaat,
                                  style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR))),
                          SizedBox(
                            height: 1.h,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(tur,
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w600)))
                        ],
                      ))
                ],
              )),
          SizedBox(
            height: 2.h,
          ),
          Flexible(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    width: 30.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Talep No',
                                  style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  talepNo,
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Atanan Kişi',
                                  style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  atananKisi,
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 1.h),
                    width: 30.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Açıklama',
                                  style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  aciklama,
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Durum',
                                  style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.5.w,
                              height: .5.h,
                            ),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  durum,
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
