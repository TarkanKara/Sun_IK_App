// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/home/notification_model.dart';

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
}
