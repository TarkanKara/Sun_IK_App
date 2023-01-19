import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/request_page_detail/request_detail_controller.dart';
import 'package:sun_ik_app/utils/const.dart';
import 'package:sun_ik_app/utils/date_convert.dart';

class RequestDetailView extends GetView<RequestDetailController> {
  const RequestDetailView({super.key});
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
          'Taleplerim Detay',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => controller.status.value.isSuccess
              ? Material(
                  elevation: 3.h,
                  child: Container(
                    width: 100.w,
                    margin: EdgeInsets.only(left: 2.w, top: 1.5.h, right: 2.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: .3.w,
                        color: const Color(0xffBDBDBD),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffE0E0E0).withOpacity(.7),
                          spreadRadius: 1.w,
                          blurRadius: 1.w,
                          offset: Offset(.4.h, .5.w),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 10.w,
                                  margin: EdgeInsets.only(left: 2.w, top: .6.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.w),
                                    color: const Color(0xffECEFF1),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      height: 7.h,
                                      width: 8.w,
                                      child: Image.asset(
                                          "assets/images/request_assets/ic_devam_ediyor.png"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 1.5.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("İzin İsteği", //tur,
                                          style: GoogleFonts.inter(
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontSize: 1.8.h,
                                              fontWeight: FontWeight.w600)),
                                      Padding(
                                        padding: EdgeInsets.only(top: .6.h),
                                        child: Text(
                                            DateTimeConverTo.compareToDateTime(
                                                controller.requestDetail!.data!
                                                    .rEQDATE
                                                    .toString()),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontSize: 1.5.h,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h, left: 2.6.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Talep Eden',
                                    style: GoogleFonts.inter(
                                        fontSize: 1.9.h,
                                        color: Const.ACIKLAMATEXTCOLOR,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 30.w),
                                  Text(
                                    'Atanan Kişi',
                                    style: GoogleFonts.inter(
                                        fontSize: 1.9.h,
                                        color: Const.ACIKLAMATEXTCOLOR,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h, left: 3.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.requestDetail!.data!.rEQEMPLOYEE
                                        .toString(),
                                    style: GoogleFonts.inter(
                                        color: Const.BASLIKTEXTCOLOR,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 1.6.h),
                                  ),
                                  SizedBox(width: 13.w),
                                  controller.requestDetail!.data!
                                              .aSSIGNEMPLOYEE !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .aSSIGNEMPLOYEE
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.6.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 6.5.h,
                          decoration: const BoxDecoration(
                            color: Color(0xffBDBDBD),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 4.w, bottom: .3.h),
                                child: Text(
                                  "Detaylar",
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 1.8.h),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.2.w, vertical: .5.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Talep Numarası',
                                    style: GoogleFonts.inter(
                                        fontSize: 2.h,
                                        color: Const.ACIKLAMATEXTCOLOR,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 30.w),
                                  controller.requestDetail!.data!.iDMASTER !=
                                          null
                                      ? Text(
                                          controller
                                              .requestDetail!.data!.iDMASTER
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 45.w,
                                      child: Text(
                                        'Şirket',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![0]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![0].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 45.w,
                                      child: Text(
                                        'Çalışan Ad Soyad',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 6.w),
                                      child: SizedBox(
                                          height: 5.5.h,
                                          width: 42.w,
                                          child: controller
                                                      .requestDetail!
                                                      .data!
                                                      .rEQUESTDETAILKEYVALUE![1]
                                                      .value !=
                                                  null
                                              ? Text(
                                                  controller
                                                      .requestDetail!
                                                      .data!
                                                      .rEQUESTDETAILKEYVALUE![1]
                                                      .value
                                                      .toString(),
                                                  maxLines: 3,
                                                  style: GoogleFonts.inter(
                                                      color:
                                                          Const.BASLIKTEXTCOLOR,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 1.6.h),
                                                )
                                              : const Text("")),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'İzne ait döküman geldi mi',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![2]
                                                .value !=
                                            null
                                        ? Text(
                                            controller.requestDetail!.data!
                                                .rEQUESTDETAILKEYVALUE![2].value
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                //4
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'İzin Tipi',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![3]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![3].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'İzin Başlangıç Tarihi',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![4]
                                                .value !=
                                            null
                                        ? Text(
                                            controller.requestDetail!.data!
                                                .rEQUESTDETAILKEYVALUE![4].value
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'İzin Bitiş Tarihi',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![5]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![5].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'İş Başı Tarihi',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![6]
                                                .value !=
                                            null
                                        ? Text(
                                            controller.requestDetail!.data!
                                                .rEQUESTDETAILKEYVALUE![6].value
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'İzin Gün Sayısı',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![7]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![7].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'İzin Başlangıç Saati',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![8]
                                                .value !=
                                            null
                                        ? Text(
                                            controller.requestDetail!.data!
                                                .rEQUESTDETAILKEYVALUE![8].value
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'İzin Bitiş Saati',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![9]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![9].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'İzin Süresi(saat)',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![10]
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![10]
                                                .value
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'İzin Süresi(dakika)',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![11]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![11].value
                                              .toString(),
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              SizedBox(height: 1.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 40.w,
                                      child: Text(
                                        'Açıklama',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 3.h,
                                      child: controller
                                                  .requestDetail!
                                                  .data!
                                                  .rEQUESTDETAILKEYVALUE![12]
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail!
                                                  .data!
                                                  .rEQUESTDETAILKEYVALUE![12]
                                                  .value
                                                  .toString(),
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                  color: Const.BASLIKTEXTCOLOR,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 1.8.h),
                                            )
                                          : const Text("")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: .5.h),
                                child: Row(
                                  //4
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 40.w,
                                        child: Text(
                                          'İzni Geçireceği Adres/Telefon',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5.h,
                                        child: controller
                                                    .requestDetail!
                                                    .data!
                                                    .rEQUESTDETAILKEYVALUE![13]
                                                    .value !=
                                                null
                                            ? Text(
                                                controller
                                                    .requestDetail!
                                                    .data!
                                                    .rEQUESTDETAILKEYVALUE![13]
                                                    .value
                                                    .toString(),
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.BASLIKTEXTCOLOR,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 1.8.h),
                                              )
                                            : const Text("")),
                                  ],
                                ),
                              ),
                              Row(
                                //4
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'Yıllık İzin Bakiyesi',
                                          maxLines: 2,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![14]
                                              .value !=
                                          null
                                      ? Text(
                                          controller.requestDetail!.data!
                                              .rEQUESTDETAILKEYVALUE![14].value
                                              .toString(),
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                child: Row(
                                  //4
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 40.w,
                                        child: Text(
                                          'Yıl İzin Hakediş Gün Tarihi',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail!
                                                .data!
                                                .rEQUESTDETAILKEYVALUE![15]
                                                .value !=
                                            null
                                        ? Text(
                                            '25.10.2022',
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.8.h),
                                          )
                                        : const Text("")
                                  ],
                                ),
                              ),
                              Row(
                                //4
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    child: SizedBox(
                                      width: 55.w,
                                      child: Text(
                                        'Yıl İzin Hakediş Gün Sayısı',
                                        style: GoogleFonts.inter(
                                            fontSize: 2.h,
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  controller
                                              .requestDetail!
                                              .data!
                                              .rEQUESTDETAILKEYVALUE![16]
                                              .value !=
                                          null
                                      ? Text(
                                          '14',
                                          style: GoogleFonts.inter(
                                              color: Const.BASLIKTEXTCOLOR,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.8.h),
                                        )
                                      : const Text("")
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 6.5.h,
                          decoration: const BoxDecoration(
                            color: Color(0xffBDBDBD),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 4.w, bottom: .3.h),
                                child: Text(
                                  "Tarih",
                                  style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 1.8.h),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(vertical: 1.5.h),
                            itemCount:
                                controller.requestDetail!.data!.hISTORY!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 2.w, top: 1.h, right: 2.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8.h,
                                      width: 48.w,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 5.h,
                                                width: 10.w,
                                                margin: EdgeInsets.only(
                                                    bottom: 2.8.h),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.w),
                                                  color:
                                                      const Color(0xffFFCDD2),
                                                ),
                                                child: const Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Color(0xffD32F2F)),
                                              ),
                                              SizedBox(width: 2.w),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    DateTimeConverTo
                                                        .compareToDateTime(
                                                      controller
                                                          .requestDetail!
                                                          .data!
                                                          .hISTORY![index]
                                                          .cONFIRMDATE
                                                          .toString(),
                                                    ),
                                                    style: GoogleFonts.inter(
                                                        color: Const
                                                            .ACIKLAMATEXTCOLOR,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  SizedBox(height: .8.h),
                                                  FittedBox(
                                                    child: SizedBox(
                                                      height: 5.h,
                                                      width: 30.w,
                                                      child: Text(
                                                        controller
                                                            .requestDetail!
                                                            .data!
                                                            .hISTORY![index]
                                                            .eMPLOYEENAMESURNAME
                                                            .toString(),
                                                        maxLines: 2,
                                                        style: GoogleFonts.inter(
                                                            color: Const
                                                                .BASLIKTEXTCOLOR,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 1.6.h),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                      width: 40.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.requestDetail!.data!
                                                .hISTORY![index].dESCRIPTION
                                                .toString(),
                                            style: GoogleFonts.inter(
                                                color: Const.ACIKLAMATEXTCOLOR,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 1.1.h,
                                          ),
                                          controller
                                                      .requestDetail!
                                                      .data!
                                                      .hISTORY![index]
                                                      .cONFIRMDESCRIPTION !=
                                                  null
                                              ? Text(
                                                  controller
                                                      .requestDetail!
                                                      .data!
                                                      .hISTORY![0]
                                                      .cONFIRMDESCRIPTION
                                                      .toString(),
                                                )
                                              : const Text("")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(child: LinearProgressIndicator()),
        ),
      ),
    );
  }
}
