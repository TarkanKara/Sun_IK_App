import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/request_page_detail/request_detail_controller.dart';
import 'package:sun_ik_app/utils/const.dart';

class RequestDetailView extends GetView<RequestDetailController> {
  const RequestDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child:
                    Icon(Icons.arrow_back_ios, size: 3.h, color: Colors.white)),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "My Requests",
              style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 3.2.h,
                  fontWeight: FontWeight.w600),
            ),
            backgroundColor: const Color(0xff94A3B8)),
        body: SingleChildScrollView(
            child: Obx(() => controller.status.value.isSuccess
                ? Material(
                    elevation: 3.h,
                    child: Container(
                      width: 100.w,
                      margin:
                          EdgeInsets.only(left: 2.w, top: 1.5.h, right: 2.w),
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
                                //resimli row
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 10.w,
                                    margin:
                                        EdgeInsets.only(left: 2.w, top: .6.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.w),
                                      color: const Color(0xffFFCDD2),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        height: 7.h,
                                        width: 8.w,
                                        child: Image.asset(
                                            "assets/images/request_assets/ic_reddetmek.png"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 1.5.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Permission Request", //tur,
                                            style: GoogleFonts.inter(
                                                color: Const.ACIKLAMATEXTCOLOR,
                                                fontSize: 1.8.h,
                                                fontWeight: FontWeight.w600)),
                                        Padding(
                                          padding: EdgeInsets.only(top: .6.h),
                                          child: Text(
                                              controller
                                                  .requestDetail.data!.reqDate
                                                  .toString(),
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
                                //1.Row Başluk
                                padding: EdgeInsets.only(top: 1.h, left: 2.6.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Requestor',
                                      style: GoogleFonts.inter(
                                          fontSize: 1.9.h,
                                          color: Const.ACIKLAMATEXTCOLOR,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 30.w),
                                    Text(
                                      'Assigned Person',
                                      style: GoogleFonts.inter(
                                          fontSize: 1.9.h,
                                          color: Const.ACIKLAMATEXTCOLOR,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                // 1. row'un bilgileri
                                padding: EdgeInsets.only(top: 1.h, left: 3.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.requestDetail.data!.reqEmployee
                                          .toString(),
                                      style: GoogleFonts.inter(
                                          color: Const.BASLIKTEXTCOLOR,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 1.5.h),
                                    ),
                                    SizedBox(width: 13.w),
                                    controller.requestDetail.data!
                                                .assignEmployee !=
                                            null
                                        ? Text(
                                            controller.requestDetail.data!
                                                .assignEmployee,
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.5.h),
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
                                    "Details",
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
                                      'Request Number',
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h,
                                          color: Const.ACIKLAMATEXTCOLOR,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 30.w),
                                    controller.requestDetail.data!.idMaster !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail.data!.idMaster
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
                                          'Company',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![0]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![0]!
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
                                          'Employee Name Last Name',
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
                                                        .requestDetail
                                                        .data!
                                                        .requestDetailKeyValue![
                                                            1]!
                                                        .value !=
                                                    null
                                                ? Text(
                                                    controller
                                                        .requestDetail
                                                        .data!
                                                        .requestDetailKeyValue![
                                                            1]!
                                                        .value
                                                        .toString(),
                                                    maxLines: 3,
                                                    //overflow: TextOverflow.ellipsis,
                                                    style: GoogleFonts.inter(
                                                        color: Const
                                                            .BASLIKTEXTCOLOR,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 55.w,
                                          child: Text(
                                            'Did you get a warrant',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![2]!
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![2]!
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
                                  //4
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: SizedBox(
                                        width: 55.w,
                                        child: Text(
                                          'Permission Type',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![3]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![3]!
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
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 55.w,
                                          child: Text(
                                            'Permission Start Date',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![4]!
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![4]!
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
                                          'Permission End Date',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![5]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![5]!
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
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 55.w,
                                          child: Text(
                                            'On-The-Job Date',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![6]!
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![6]!
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
                                          'Permission Number of Days of Leave',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![7]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![7]!
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
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 55.w,
                                          child: Text(
                                            'Permission Start Time',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![8]!
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![8]!
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
                                          'Permission End Time',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![9]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![9]!
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
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 55.w,
                                          child: Text(
                                            'Permission Time (time)',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![10]!
                                                  .value !=
                                              null
                                          ? Text(
                                              controller
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![10]!
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
                                          'Permission Time (minutes)',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![11]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![11]!
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
                                          'Description',
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
                                                    .requestDetail
                                                    .data!
                                                    .requestDetailKeyValue![12]!
                                                    .value !=
                                                null
                                            ? Text(
                                                controller
                                                    .requestDetail
                                                    .data!
                                                    .requestDetailKeyValue![12]!
                                                    .value
                                                    .toString(),
                                                maxLines: 5,
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
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: .5.h),
                                  child: Row(
                                    //4
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 40.w,
                                          child: Text(
                                            'Address/Phone To Pass Permission',
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
                                                      .requestDetail
                                                      .data!
                                                      .requestDetailKeyValue![
                                                          13]!
                                                      .value !=
                                                  null
                                              ? Text(
                                                  controller
                                                      .requestDetail
                                                      .data!
                                                      .requestDetailKeyValue![
                                                          13]!
                                                      .value
                                                      .toString(),
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.inter(
                                                      color:
                                                          Const.BASLIKTEXTCOLOR,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                            'Anual Leave Balance',
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
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![14]!
                                                .value !=
                                            null
                                        ? Text(
                                            controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![14]!
                                                .value
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: SizedBox(
                                          width: 40.w,
                                          child: Text(
                                            'Year Permit Date',
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
                                                  .requestDetail
                                                  .data!
                                                  .requestDetailKeyValue![15]!
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
                                          'Number of Days Of Year Leave',
                                          style: GoogleFonts.inter(
                                              fontSize: 2.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    controller
                                                .requestDetail
                                                .data!
                                                .requestDetailKeyValue![16]!
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
                                    "History",
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
                            //1. blki listview
                            padding: EdgeInsets.only(
                                left: 2.w, top: 1.h, right: 2.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            margin:
                                                EdgeInsets.only(bottom: 2.8.h),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.w),
                                              color: const Color(0xffFFCDD2),
                                            ),
                                            child: const Icon(
                                                Icons.calendar_month_outlined,
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
                                                "26.08.2022 16:54",
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.ACIKLAMATEXTCOLOR,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(height: .8.h),
                                              FittedBox(
                                                child: SizedBox(
                                                  height: 5.h,
                                                  width: 30.w,
                                                  child: Text(
                                                    "Büşra Gültekin Ermez",
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
                                        "Demand Has Begun ....",
                                        style: GoogleFonts.inter(
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 1.1.h,
                                      ),
                                      Text("Demand Has Begun ."),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 2.w, top: 1.5.h, right: 2.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 14.h,
                                  width: 49.w,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 5.h,
                                            width: 10.w,
                                            margin:
                                                EdgeInsets.only(bottom: 2.8.h),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.w),
                                              color: const Color(0xffFFCDD2),
                                            ),
                                            child: const Icon(
                                                Icons.calendar_month_outlined,
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
                                                "26.08.2022 16:54",
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.ACIKLAMATEXTCOLOR,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(height: .8.h),
                                              FittedBox(
                                                child: SizedBox(
                                                  height: 5.h,
                                                  width: 37.w,
                                                  child: Text(
                                                    "MEHMET SOYDEMİR",
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
                                  height: 14.h,
                                  width: 40.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Request Approved",
                                        style: GoogleFonts.inter(
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 1.1.h,
                                      ),
                                      Text(""),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Center(child: CircularProgressIndicator()))));
  }
}

/* 
eskisi
Obx(() => controller.status.value.isSuccess
          ? Center(
              child: Text(controller
                  .requestDetail.data!.requestDetailKeyValue![3]!.value
                  .toString()),
            )
          : const Center(child: CircularProgressIndicator()
          )
          ),

 */
