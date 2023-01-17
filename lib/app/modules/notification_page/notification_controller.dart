// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_model.dart';
import 'package:sun_ik_app/utils/dialog.dart';

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
    refresh();
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
                  onPressed: () {},
                  child: const Text('Hepsini Sil')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  child: const Text('Sadece Okunanları Sil'))
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
            onPressed: () {
              selectedNotificationDelete(idPushNotificationDetail);
            },
            child: const Text('Sil')));
  }

  delete_bulk() {}
}
