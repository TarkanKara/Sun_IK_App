// ignore_for_file: unused_element, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_file_plus/open_file_plus.dart';

import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../routes/app_pages.dart';
import '../../widgets/last_my_payroll.dart';
import '../../widgets/my_payroll_list_card.dart';
import 'my_payrolls_controller.dart';

class MyPayrollsView extends GetView<MyPayrollsController> {
  const MyPayrollsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        /* actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          IconButton(
            onPressed: () {
              controller.showDatePickerr();
            },
            icon: const Icon(Icons.date_range_outlined),
          ),
        ], */
        title: const Text("BORDROLARIM"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffEC4B58),
                        Color(0xffEF3E52),
                        Color(0xffEE5A5D)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Obx(() => controller.status.value.isSuccess
                          ? SizedBox(
                              height: 55.h,
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount:
                                    controller.myPayrollModel.data!.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: 1.4.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.indexfinal.value = index;
                                        controller.getMyPayrollPdf(index);
                                        Get.toNamed(Routes.PDF_VIEW);
                                      },
                                      child: MyPayrollListCard(
                                          callback: () async {
                                            final temp =
                                                await getTemporaryDirectory();
                                            final path =
                                                "${temp.path}/${controller.myPayrollModel.data![index].documentperiod} bordros.pdf";
                                            final file = File(path);
                                            file.writeAsBytesSync(controller
                                                .myPayrollPdfModel
                                                .data!
                                                .codeUnits);
                                            await OpenFile.open(file.path,
                                                type: "text/plain");
                                          },
                                          subTitleText: "",
                                          /* controller.myPayrollModel
                                              .data![index].documentmonth
                                              .toString(), */
                                          titleText: controller.myPayrollModel
                                              .data![index].documentperiod
                                              .toString()),
                                    ),
                                  );
                                },
                              ),
                            )
                          : CircularProgressIndicator())
                    ],
                  ),
                ),
              ),
            ],
          ),
          Obx(
            () => controller.status.value.isSuccess
                ? Positioned(
                    top: 12.h,
                    left: 8.w,
                    right: 8.w,
                    child: GestureDetector(
                        onTap: () {
                          controller.getMyPayrollPdf(0);
                          Get.toNamed(Routes.PDF_VIEW);
                        },
                        child: LastMyPayroll(
                          userText: controller.userName,
                        )),
                  )
                : Center(child: CircularProgressIndicator()),
          ),
          controller.photoPath! != null
              ? Positioned(
                  top: 8.h,
                  left: 40.w,
                  right: 40.w,
                  child: CircleAvatar(
                    radius: 10.w,
                    backgroundColor: const Color(0xffEBEBEB),
                    child: CircleAvatar(
                      radius: 8.w,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      backgroundImage: MemoryImage(
                        controller.photoPath!,
                      ),
                    ),
                  ))
              : CircleAvatar(
                  radius: 10.w,
                  backgroundColor: const Color(0xffEBEBEB),
                  child: CircleAvatar(
                    radius: 8.w,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    backgroundImage: AssetImage(
                        "assets/images/home_assets/ic_avatar_profile.png"),
                  ),
                )
        ],
      ),
    );
  }
}
