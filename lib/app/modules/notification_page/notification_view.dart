import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_controller.dart';
import 'package:sun_ik_app/utils/date_convert.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.status.value.isSuccess
          ? Center(
              child: Text(
                "Date : ${DateTimeConverTo.compareToDateTime(controller.notification.data![0]!.notificationDate.toString())}",
                style: const TextStyle(fontSize: 25),
              ),
            )
          : const Center(child: CircularProgressIndicator())),
    );
  }
}
