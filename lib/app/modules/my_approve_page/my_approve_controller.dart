// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../api/api_repository.dart';
import '../../../utils/const.dart';
import '../../models/my_request/my_approve_get_pending_model.dart';

class MyApproveController extends GetxController {
  final ApiRepository apiRepository;
  MyApproveController({required this.apiRepository});
  //Model
  MyRequestGetPending myRwquestGetPending = MyRequestGetPending();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;
  RxInt index = 0.obs;
  RxString filterIsim = "Tümü".obs;
  //
  @override
  void onInit() {
    getMyRequestGetPending();
    print("MyApprove View Yüklendi");
    super.onInit();
  }

  //getMyRequestGetPending
  getMyRequestGetPending() async {
    status.value = RxStatus.loading();
    myRwquestGetPending = (await apiRepository.getMyRequestGetPending())!;
    status.value = RxStatus.success();
  }

  filterMyApprove(int query) async {
    status.value = RxStatus.loading();
    myRwquestGetPending = (await apiRepository.getFilterPendingApprove(query))!;
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
                    filterMyApprove(-1);
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
                    filterMyApprove(0);

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
                    filterIsim.value = "Onaylarım";
                    filterMyApprove(11);
                    Get.back();
                  },
                  child: Text('Onaylarım',
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
                    filterIsim.value = "Reddettiklerim";
                    filterMyApprove(12);

                    Get.back();
                  },
                  child: Text('Reddettiklerim',
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
                    filterIsim.value = "Revize Ettiklerim";
                    filterMyApprove(14);

                    Get.back();
                  },
                  child: Text('Revize Ettiklerim',
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
                    filterIsim.value = "Geri Gönderilenler";
                    filterMyApprove(6);

                    Get.back();
                  },
                  child: Text('Geri Gönderilenler',
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
