// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_model.dart';
import 'package:sun_ik_app/utils/const.dart';

class RequestController extends GetxController {
  final ApiRepository apiRepository;
  RequestController({required this.apiRepository});
  //
  MyRequestModel myRequestModel = MyRequestModel();

  //
  RxString filterIsim = "Tümü".obs;
  Rx<RxStatus> status = RxStatus.empty().obs;

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
                    filterIsim.value = "Süreç Devam Ediyor / Revize Edildi";
                    Get.back();
                  },
                  child: Text('Süreç Devam Ediyor / Revize Edildi',
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
                    filterIsim.value = "Süreç Devam Ediyor";
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
                    filterIsim.value = "Revize Edildi";
                    Get.back();
                  },
                  child: Text('Revize Edildi',
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
                    filterIsim.value = "Geri Gönderildi";
                    Get.back();
                  },
                  child: Text('Geri Gönderildi',
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

  @override
  void onInit() {
    postMyRequest();
    print("My Request View Yüklendi");
    super.onInit();
  }

  //postMyRequest
  postMyRequest() async {
    status.value = RxStatus.loading();
    myRequestModel = (await apiRepository.getMyRequest())!;
    status.value = RxStatus.success();
  }

  //compareToDateTime
  compareToDateTime(String formattedString) {
    DateTime currentTime = DateTime.parse(formattedString);

    // the "dd/MM/yyyy HH:mm" format
    var res1 = DateFormat.yMd().add_jm().format(currentTime);

    // just the date
    var res2 = DateFormat.yMd().format(currentTime);

    return res1;
  }

  /*  //myRequestIcon
  myRequestIcon(int index) {
    switch (myRequestModel.data!.myRequestList![index].sTATUNAME) {
      case "Devam Ediyor":
        return 'assets/images/request_assets/ic_devam_ediyor.png';
      default:
    }
  } */

}
