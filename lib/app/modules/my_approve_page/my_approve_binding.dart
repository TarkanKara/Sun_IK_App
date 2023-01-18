import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_controller.dart';

class MyApproveBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      MyApproveController(apiRepository: Get.find()),
      permanent: false,
    );
  }
}
