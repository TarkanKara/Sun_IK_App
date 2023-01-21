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
                        fit: BoxFit.cover)
                        ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                          "İş Oluşturulma Tarihi: ${DateTimeConverTo.compareToDateTime(controller.myJobsController.myJobs.data!.pendingJobsList![0].wORKCREATIONDATE.toString())}",style: GoogleFonts.inter(
                            fontSize: 2.h,color: Colors.black
                          ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                          "Talep Eden: ${controller.myJobsController.myJobs.data!.pendingJobsList![0].eMPLOYEENAMESURNAME}",style: GoogleFonts.inter(
                            fontSize: 2.h,color: Colors.black
                          ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                          "Atanan Kişi: ${controller.myJobsController.myJobs.data!.pendingJobsList![0].aSSIGNEMPLOYEE}",style: GoogleFonts.inter(
                            fontSize: 2.h,color: Colors.black
                          ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                          "Durum: ${controller.myJobsController.myJobs.data!.pendingJobsList![0].wORKSTATUSNAME}",style: GoogleFonts.inter(
                            fontSize: 2.h,color: Colors.black
                          ),), // Status sabit pending değişecek ${}
                    ),
                  ],
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
                              fit: BoxFit.cover)
                              ),
                   
                    ),
                ],
              ),
            ),
      ),
    );
  }
}
