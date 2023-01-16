import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_controller.dart';

class NotificationBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      NotificationController(apiRepository: Get.find()),
      permanent: true,
    );
  }
}
