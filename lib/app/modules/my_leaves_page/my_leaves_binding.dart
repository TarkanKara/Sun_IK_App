import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_leaves_page/my_leaves_controller.dart';

class MyLeavesBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      MyLeavesController(apiRepository: Get.find()),
      permanent: false,
    );
  }
}
