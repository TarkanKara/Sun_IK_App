import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_jobs_details_page/my_jobs_details_controller.dart';

import '../../../utils/base64_convert_picture.dart';
import '../../../utils/date_convert.dart';

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
      body: Obx(
        () => controller.myJobsController.status.value.isSuccess
            ? Container(
                height: 100.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/login/login_background.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            color: const Color(0xffF5F5F5),
                            border:
                                Border.all(width: .4.w, color: Colors.grey)),
                        child: Padding(
                          padding: EdgeInsets.all(2.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "İş Oluşturulma Tarihi:",
                                    style: GoogleFonts.inter(
                                        fontSize: 2.h,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "${DateTimeConverTo.compareToDateTime(controller.myJobsController.myJobs.data!.pendingJobsList![0].wORKCREATIONDATE.toString())}",
                                    style: GoogleFonts.inter(
                                        fontSize: 2.h, color: Colors.black),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Talep Eden:",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      controller
                                                  .myJobsController
                                                  .myJobs
                                                  .data!
                                                  .pendingJobsList![0]
                                                  .eMPLOYEENAMESURNAME !=
                                              null
                                          ? "${controller.myJobsController.myJobs.data!.pendingJobsList![0].eMPLOYEENAMESURNAME}"
                                          : "Belirtilmedi",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Atanan Kişi:",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      controller
                                                  .myJobsController
                                                  .myJobs
                                                  .data!
                                                  .pendingJobsList![0]
                                                  .aSSIGNEMPLOYEE !=
                                              null
                                          ? "${controller.myJobsController.myJobs.data!.pendingJobsList![0].aSSIGNEMPLOYEE}"
                                          : "Belirtilmedi",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Durum:",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      controller
                                                  .myJobsController
                                                  .myJobs
                                                  .data!
                                                  .pendingJobsList![0]
                                                  .wORKSTATUSNAME !=
                                              null
                                          ? "${controller.myJobsController.myJobs.data!.pendingJobsList![0].wORKSTATUSNAME}"
                                          : "Belirtilmedi",
                                      style: GoogleFonts.inter(
                                          fontSize: 2.h, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    LinearProgressIndicator(),
                    Container(
                      height: 90.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/login/login_background.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
