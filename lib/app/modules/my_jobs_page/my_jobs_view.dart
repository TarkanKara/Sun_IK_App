import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/date_convert.dart';

import '../../../utils/const.dart';
import 'my_jobs_controller.dart';

class MyJobsView extends GetView<MyJobsController> {
  const MyJobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 217, 217),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Const.STATUSBARCOLOR),
        elevation: 0,
        toolbarHeight: 6.h,
        leading: IconButton(
          onPressed: () {},
          icon : const Icon(Icons.arrow_back_rounded),
          color: Color(0xff2C3E50),
        ),
        centerTitle: true,
        title: Text(
          'My Tasks',
          style: GoogleFonts.inter(
              color: const Color(0xff10130F),
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
                itemCount:
                    controller.myJobs.data!.pendingJobsList!.length, //değişecek
                itemBuilder: (context, index) {
                  return Container(
                    height: 22.h,
                    width: 100.w,
                    margin:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
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
                                  margin: EdgeInsets.only(top: 1.h, left: 2.w),
                                  child: Image.asset(
                                    "assets/images/my_tasks/my_tasks_pic.JPG",
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                width: 2.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: Text(
                                        //"18.06",
                                        DateTimeConverTo.compareToDateTime(
                                          controller
                                              .myJobs
                                              .data!
                                              .pendingJobsList![index]
                                              .wORKCREATIONDATE
                                              .toString(),
                                        ),
                                        style: GoogleFonts.inter(
                                            color: Const.ACIKLAMATEXTCOLOR,
                                            fontSize: 1.4.h)),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Work Number',
                                      style: GoogleFonts.inter(
                                          fontSize: 1.7.h,
                                          color: Const.ACIKLAMATEXTCOLOR,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.h, bottom: 1.h, left: 7.5.w),
                                        child: controller
                                                    .myJobs
                                                    .data!
                                                    .pendingJobsList![index]
                                                    .iDWORK !=
                                                null
                                            ? Text(
                                                controller
                                                    .myJobs
                                                    .data!
                                                    .pendingJobsList![index]
                                                    .iDWORK
                                                    .toString(),
                                                style: GoogleFonts.inter(
                                                    color:
                                                        Const.BASLIKTEXTCOLOR,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 1.6.h),
                                              )
                                            : const Text("")),
                                    Text(
                                      'Requestor',
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
                                            child: controller
                                                        .myJobs
                                                        .data!
                                                        .pendingJobsList![index]
                                                        .eMPLOYEENAMESURNAME !=
                                                    null
                                                ? Text(
                                                    controller
                                                        .myJobs
                                                        .data!
                                                        .pendingJobsList![index]
                                                        .eMPLOYEENAMESURNAME
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.inter(
                                                      color:
                                                          Const.BASLIKTEXTCOLOR,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 1.8.h,
                                                    ),
                                                  )
                                                : const Text("")),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  //açıklama  column'ı
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status',
                                      style: GoogleFonts.inter(
                                          fontSize: 1.8.h,
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
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.w),
                                            child: Text(
                                              controller
                                                  .myJobs
                                                  .data!
                                                  .pendingJobsList![index]
                                                  .wORKSTATUSNAME
                                                  .toString(),
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.inter(
                                                  color: Const.BASLIKTEXTCOLOR,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 1.7.h),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          : const CircularProgressIndicator()),
    ));
  }
}