// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_model.dart';

class NotificationController extends GetxController {
  final ApiRepository apiRepository;
  NotificationController({required this.apiRepository});

  //Model
  NotificationModel notification = NotificationModel();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    getNotification();
    print("Notification View Yüklendi");
    super.onInit();
  }

  //getNotification
  getNotification() async {
    status.value = RxStatus.loading();
    notification = (await apiRepository.getPushNotification())!;
    status.value = RxStatus.success();
  }

  getDialog() {
    return Get.defaultDialog(actions: [
      Column(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Hepsini Sil')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Sadece Okunanları Sil'))
        ],
      )
    ]);
  }

  delete() {}

  delete_bulk() {}
}
