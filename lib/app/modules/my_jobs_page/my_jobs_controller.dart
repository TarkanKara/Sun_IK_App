// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/models/my_request/my_pending_jobs_model.dart';

import '../../../api/api_repository.dart';
import '../../../utils/const.dart';

class MyJobsController extends GetxController {
  final ApiRepository apiRepository;
  MyJobsController({required this.apiRepository});

  String query = "";

  //Model
  MyPendingJobs myJobs = MyPendingJobs();
  //
  Rx<RxStatus> status = RxStatus.empty().obs;
  RxString filterIsim = "Tümü".obs;
  //
  @override
  void onInit() {
    getMyJobs();

    print("MyJobs View Yüklendi");
    super.onInit();
  }

  //getMyJobs
  getMyJobs() async {
    status.value = RxStatus.loading();
    myJobs = (await apiRepository.getMyPendingJobs())!;
    status.value = RxStatus.success();
  }

  filterMyJobs(String query) async {
    status.value = RxStatus.loading();
    myJobs = (await apiRepository.getFilterJobs(query))!;
    status.value = RxStatus.success();
  }

  //
  getFilter() {
    Get.defaultDialog(
        contentPadding: EdgeInsets.only(bottom: 2.5.h),
        titleStyle: GoogleFonts.inter(fontSize: 0),
        title: '',
        content: Container(),
        backgroundColor: Colors.white,
        actions: [
          Column(
            children: [
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Tümü";
                    getMyJobs();
                    Get.back();
                  },
                  child: Text(
                    'Tümü',
                    style: GoogleFonts.inter(
                        color: Const.BASLIKTEXTCOLOR,
                        fontWeight: FontWeight.w500),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Süreç Devam Ediyor";
                    filterMyJobs("1");
                    Get.back();
                  },
                  child: Text('Süreç Devam Ediyor',
                      style: GoogleFonts.inter(
                          color: Const.BASLIKTEXTCOLOR,
                          fontWeight: FontWeight.w500))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Onaylandı";
                    filterMyJobs("2");
                    Get.back();
                  },
                  child: Text('Onaylandı',
                      style: GoogleFonts.inter(
                          color: Const.BASLIKTEXTCOLOR,
                          fontWeight: FontWeight.w500))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                width: 100.w,
                height: .1.h,
                color: Colors.grey.withOpacity(0.2),
              ),
              TextButton(
                  onPressed: () {
                    filterIsim.value = "Reddedildi";
                    filterMyJobs("5");

                    Get.back();
                  },
                  child: Text('Reddedildi',
                      style: GoogleFonts.inter(
                          color: Const.BASLIKTEXTCOLOR,
                          fontWeight: FontWeight.w500))),
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
                  child: Text('Vazgeç',
                      style: GoogleFonts.inter(
                          color: Colors.black, fontWeight: FontWeight.w700))),
            ],
          )
        ]);
  }
}
