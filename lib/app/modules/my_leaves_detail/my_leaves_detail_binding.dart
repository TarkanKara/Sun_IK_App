import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_leaves_detail/my_leaves_detail_controller.dart';

class MyLeavesDetailBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      MyLeavesDetailController(apiRepository: Get.find()),
      permanent: false,
    );
  }
}
