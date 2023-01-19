import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/request_page/request_controller.dart';
import 'package:sun_ik_app/app/widgets/request_widgets/request_list_item.dart';
import 'package:sun_ik_app/utils/const.dart';
import '../../../utils/date_convert.dart';
import '../../routes/app_pages.dart';

class RequestView extends GetView<RequestController> {
  const RequestView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
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
        actions: [
          IconButton(
            onPressed: () {
              controller.getFilter();
            },
            icon: Image.asset(
              'assets/images/request_assets/ic_filter.png',
              color: Colors.white,
              scale: .5.h,
            ),
          )
        ],
        title: Text(
          "Taleplerim",
          style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Obx(
        () => controller.status.value.isSuccess
            ? Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 3.h,
                    child: Text(
                      controller.filterIsim.value,
                      style: GoogleFonts.inter(color: Const.BASLIKTEXTCOLOR),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount:
                          controller.myRequestModel.data!.myRequestList!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.index.value = index;
                            Get.toNamed(Routes.REQUEST_DETAIL);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.w),
                            child: RequestListItem(
                              imageAsset:
                                  'assets/images/request_assets/ic_devam_ediyor.png',
                              tarihVeSaat:
                                  "${DateTimeConverTo.compareToDateTime(controller.myRequestModel.data!.myRequestList![index].rEQDATE.toString())}",
                              tur:
                                  "${controller.myRequestModel.data!.myRequestList![index].rEQNAME}",
                              talepNo:
                                  "${controller.myRequestModel.data!.myRequestList![index].iDMASTER}",
                              atananKisi: controller
                                          .myRequestModel
                                          .data!
                                          .myRequestList![index]
                                          .aSSIGNEMPLOYEE !=
                                      null
                                  ? "${controller.myRequestModel.data!.myRequestList![index].aSSIGNEMPLOYEE}"
                                  : "",
                              aciklama:
                                  "${controller.myRequestModel.data!.myRequestList![index].rEQEMPLOYEE}",
                              durum:
                                  "${controller.myRequestModel.data!.myRequestList![index].sTATUNAME}",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
