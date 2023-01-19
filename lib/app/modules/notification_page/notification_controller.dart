// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_model.dart';
import 'package:sun_ik_app/app/modules/home_page/home_controller.dart';
import 'package:sun_ik_app/utils/dialog.dart';

class NotificationController extends GetxController {
  final ApiRepository apiRepository;
  NotificationController({required this.apiRepository});

  HomeController homeController =
      Get.put(HomeController(apiRepository: Get.find()));

  //Model
  NotificationModel notification = NotificationModel();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  RxInt index = 0.obs;

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
    return Get.defaultDialog(
        title: 'Uyarı',
        content: const Text('Bildirimleriniz silinecektir.'),
        actions: [
          Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    selectedAllOrReadedNotificationDelete(2);
                    getNotification();
                    Get.back();
                  },
                  child: const Text('Hepsini Sil')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    selectedAllOrReadedNotificationDelete(1);
                    getNotification();
                    Get.back();
                  },
                  child: const Text('Sadece Okunanları Sil')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    getNotification();
                    Get.back();
                  },
                  child: const Text('Kapat'))
            ],
          )
        ]);
  }

  selectedNotificationDelete(int? idPushNotificationDetail) async {
    status.value = RxStatus.loading();
    await apiRepository.getDeleteNotification(idPushNotificationDetail!);
    status.value = RxStatus.success();
  }

  getDialog2(int? idPushNotificationDetail) {
    return CustomDialog.getDialog(
        "Uyarı", "Silmek istediğinize emin misiniz?", "Kapat",
        widget: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              selectedNotificationDelete(idPushNotificationDetail);
              getNotification();
              Get.back();
            },
            child: const Text('Sil')));
  }

  selectedAllOrReadedNotificationDelete(int allOrReaded) async {
    status.value = RxStatus.loading();
    await apiRepository.getBulkDeleteNotification(allOrReaded);
    status.value = RxStatus.success();
  }
}
