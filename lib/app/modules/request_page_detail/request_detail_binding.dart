import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/request_page_detail/request_detail_controller.dart';

class RequestDetailBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      RequestDetailController(apiRepository: Get.find()),
      permanent: true,
    );
  }
}
