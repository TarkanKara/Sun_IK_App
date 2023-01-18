import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_controller.dart';
import 'package:sun_ik_app/utils/const.dart';

import '../../../utils/date_convert.dart';
import '../../routes/app_pages.dart';

class MyApproveView extends GetView<MyApproveController> {
  const MyApproveView({super.key});

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
          'My Approve',
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Obx(() => controller.status.value.isSuccess
            ? SizedBox(
                height: 100.h,
                width: 100.w,
                child: ListView.builder(
                  itemCount: controller
                      .myRwquestGetPending.data!.pendingRequestList!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // controller.index.value = index;
                        Get.toNamed(Routes.MY_APPROVE_DETAIL);
                      },
                      child: Container(
                        height: 22.h,
                        width: 100.w,
                        margin: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.5.h),
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
                                      height: 5.h,
                                      width: 10.w,
                                      margin:
                                          EdgeInsets.only(top: 1.h, left: 2.w),
                                      child: Image.asset(
                                        "assets/images/my_approve/green_tick.png",
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.2.h),
                                        child: Text(
                                            DateTimeConverTo.compareToDateTime(
                                                controller
                                                    .myRwquestGetPending
                                                    .data!
                                                    .pendingRequestList![index]
                                                    .rEQDATE
                                                    .toString()),
                                            style: GoogleFonts.inter(
                                                color: Const.ACIKLAMATEXTCOLOR,
                                                fontSize: 1.7.h)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.h),
                                        child: Text(
                                            "${controller.myRwquestGetPending.data!.pendingRequestList![index].rEQNAME}",
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontSize: 1.9.h,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.w, top: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      //talep no  column'ı
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Talep No',
                                          style: GoogleFonts.inter(
                                              fontSize: 1.7.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.h, bottom: 1.h, left: 4.w),
                                          child: Text(
                                            "${controller.myRwquestGetPending.data!.pendingRequestList![index].iDMASTER}",
                                            style: GoogleFonts.inter(
                                                color: Const.BASLIKTEXTCOLOR,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 1.6.h),
                                          ),
                                        ),
                                        Text(
                                          'Atanan Kişi',
                                          style: GoogleFonts.inter(
                                              fontSize: 1.7.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.h, horizontal: .8.w),
                                          child: FittedBox(
                                            child: SizedBox(
                                              height: 3.h,
                                              width: 45.w,
                                              child: Text(
                                                "${controller.myRwquestGetPending.data!.pendingRequestList![index].aSSIGNEMPLOYEE}",
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.inter(
                                                  color: Const.BASLIKTEXTCOLOR,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 1.7.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      //açıklama  column'ı
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Açıklama",
                                          style: GoogleFonts.inter(
                                              fontSize: 1.7.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.h, horizontal: .8.w),
                                          child: FittedBox(
                                            child: SizedBox(
                                              height: 2.h,
                                              width: 40.w,
                                              child: Text(
                                                "${controller.myRwquestGetPending.data!.pendingRequestList![index].eMPLOYEENAMESURNAME}",
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.BASLIKTEXTCOLOR,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 1.6.h),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Talep Eden',
                                          style: GoogleFonts.inter(
                                              fontSize: 1.6.h,
                                              color: Const.ACIKLAMATEXTCOLOR,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.h, horizontal: .8.w),
                                          child: FittedBox(
                                            child: SizedBox(
                                              height: 3.h,
                                              width: 40.w,
                                              child: Text(
                                                "${controller.myRwquestGetPending.data!.pendingRequestList![index].rEQEMPLOYEE}",
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.BASLIKTEXTCOLOR,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 1.6.h),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            : const Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
