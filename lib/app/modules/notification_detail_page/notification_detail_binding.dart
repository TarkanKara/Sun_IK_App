import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/notification_detail_page/notification_detail_controller.dart';

class NotificationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NotificationDetailController(apiRepository: Get.find()));
  }
}
