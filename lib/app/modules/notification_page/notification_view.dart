// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_controller.dart';
import 'package:sun_ik_app/utils/date_convert.dart';


class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        actions: [
          GestureDetector(onTap: () {
            controller.getDialog();
          },
            child: Image.asset('assets/images/notification_assets/ic_delete.png',scale: .5.h,color: Colors.white,)),
        ],
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text("Notifications"),
      ),
      body: SingleChildScrollView(
        child: Obx(() => controller.status.value.isSuccess ? 
          Column(
            children: [
              SizedBox(height: 2.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                //color: Colors.red,
                width: 100.w,
                height: 80.h,
                child: ListView.builder(
                  
                    itemCount: controller.notification.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 2.h),
                        height: 15.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  offset: Offset(0, 1))
                            ]),
                            child: Row(
                              children: [
                                Container(
                                  width: 20.5.w,
                                  height: 100.h,
                                  child: Image.asset('assets/images/notification_assets/ic_bildirim.png',scale: .4.h,color: controller.notification.data![index]!.isRead == false ? Colors.red : Colors.grey,),
                                ),
                                Container(
                                  // alignment: Alignment.topLeft,
                                  width: 50.w,
                                  height: 100.h,
                                  //color: Colors.amber,
                                  child: Column(
                                    children: [
                                      //SizedBox(height: 3.h,),
                                      Align(alignment : Alignment.topLeft,child: Text(DateTimeConverTo.compareToDateTime(controller.notification.data![index]!.notificationDate.toString()),style: GoogleFonts.inter(color: const Color(0xff8F989D)),)),
                                      SizedBox(height: 1.h,),
                                      //Align(alignment : Alignment.topLeft,child: Text(controller.notification.data![index]!.messageTitle.toString(),style: GoogleFonts.inter(color: const Color.fromARGB(255, 72, 74, 77),fontSize: 2.h,fontWeight: FontWeight.w700),)),
                                      SizedBox(height: 1.h,),
                                      //Align(alignment : Alignment.topLeft,child: Text(controller.notification.data![index]!.messageBody.toString().substring(0,20),style: GoogleFonts.inter(color: const Color(0xff8F989D)),)),
                                    ],
                                  )
                                ),
                                Container(
                                  width: 20.5.w,
                                  height: 100.h,
                                  child: Image.asset('assets/images/notification_assets/ic_delete.png',scale: .5.h,color: Colors.grey,),
                                )
                              ],
                            ),
                      );
                    }),
              ),
            ],
          ) : const Center(child: CircularProgressIndicator(),)
        ),
      ),
    );
  }
}