import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import 'notification_detail_controller.dart';

class NotificationDetailView extends GetView<NotificationDetailController> {
  const NotificationDetailView({super.key});

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
            controller.notificationController.getNotification();
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          'Notification Detail',
          style: GoogleFonts.inter(
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontSize: 2.2.h,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.w)),
            color: const Color(0xffFDFDFD),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListTile(
                title: Text(
                  controller
                      .notificationController
                      .notification
                      .data![controller.notificationController.index.value]!
                      .messageTitle
                      .toString(),
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 2.2.h, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    overflow: TextOverflow.ellipsis,
                    controller
                        .notificationController
                        .notification
                        .data![controller.notificationController.index.value]!
                        .messageBody
                        .toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
