import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/request_page/request_controller.dart';
import 'package:sun_ik_app/app/widgets/request_widgets/request_list_item.dart';
import 'package:sun_ik_app/utils/const.dart';

class RequestView extends GetView<RequestController> {
  const RequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 221, 217, 217),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Const.STATUSBARCOLOR),
        elevation: 0,
        toolbarHeight: 6.h,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_rounded),
          color: const Color(0xff2C3E50),
        ),
        centerTitle: true,
        title: Text(
          'Taleplerim',
          style: GoogleFonts.inter(
              color: const Color(0xff10130F),
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.getFilter();
            },
            icon: Image.asset(
              'assets/images/request_assets/ic_filter.png',
              color: const Color(0xff2C3E50),
              scale: .5.h,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Obx(() => Container(
                alignment: Alignment.center,
                width: 100.w,
                height: 3.h,
                child: Text(
                  controller.filterIsim.value,
                  style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR),
                ),
              )),
          SizedBox(
            height: 2.h,
          ),
          RequestListItem(
            imageAsset: 'assets/images/request_assets/ic_devam_ediyor.png',
            tarihVeSaat: '13.01.2023  11:38',
            tur: 'İzin Talebi',
            talepNo: '588',
            atananKisi: 'SEVİNÇ AKSU',
            aciklama: 'MÜMİN SÜRER',
            durum: 'Devam Ediyor',
          )
        ],
      ),
    );
  }
}
