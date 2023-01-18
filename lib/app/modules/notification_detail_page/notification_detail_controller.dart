import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_controller.dart';

class NotificationDetailController extends GetxController {
  ApiRepository apiRepository;
  NotificationDetailController({required this.apiRepository});

  @override
  void onInit() {
    isNotificationRead(notificationController.index.value);
    super.onInit();
  }

  

  NotificationController notificationController =
      Get.put(NotificationController(apiRepository: Get.find()));

  Rx<RxStatus> status = RxStatus.empty().obs;

  isNotificationRead(int notificationIndex) async {
    status.value = RxStatus.loading();
    await apiRepository.getReadNotification(notificationController
        .notification.data![notificationIndex]!.idPushNotificationDetail);
    status.value = RxStatus.success();
  }
}
