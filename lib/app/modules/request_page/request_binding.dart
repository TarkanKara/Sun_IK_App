import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/request_page/request_controller.dart';

class RequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      RequestController(apiRepository: Get.find()),
      permanent: true,
    );
  }
}
