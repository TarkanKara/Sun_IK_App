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
          Obx(
            () => controller.status.value.isSuccess
                ? Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 3.h,
                    child: Text(
                      controller.filterIsim.value,
                      style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR),
                    ),
                  )
                : const Center(child: CircularProgressIndicator()),
          ),
          SizedBox(
            height: 2.h,
          ),
          Obx(
            () => controller.status.value.isSuccess
                ? SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount:
                          controller.myRequestModel.data!.myRequestList!.length,
                      itemBuilder: (context, index) {
                        return RequestListItem(
                          imageAsset:
                              'assets/images/request_assets/ic_devam_ediyor.png',
                          tarihVeSaat:
                              "${controller.compareToDateTime(controller.myRequestModel.data!.myRequestList![0].rEQDATE.toString())}",
                          tur:
                              "${controller.myRequestModel.data!.myRequestList![0].rEQNAME}",
                          talepNo:
                              "${controller.myRequestModel.data!.myRequestList![0].iDMASTER}",
                          atananKisi: controller.myRequestModel.data!
                                      .myRequestList![0].aSSIGNEMPLOYEE !=
                                  null
                              ? "${controller.myRequestModel.data!.myRequestList![0].aSSIGNEMPLOYEE}"
                              : "",
                          aciklama:
                              "${controller.myRequestModel.data!.myRequestList![0].rEQEMPLOYEE}",
                          durum:
                              "${controller.myRequestModel.data!.myRequestList![0].sTATUNAME}",
                        );
                      },
                    ),
                  )
                : const Center(child: CircularProgressIndicator()),
          )
        ],
      ),
    );
  }
}
