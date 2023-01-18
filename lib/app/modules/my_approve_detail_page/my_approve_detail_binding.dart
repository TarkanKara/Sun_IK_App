import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_approve_detail_page/my_approve_detail_controller.dart';

class MyApproveDetailBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      MyApproveDetailController(apiRepository: Get.find()),
      permanent: false,
    );
  }
}
