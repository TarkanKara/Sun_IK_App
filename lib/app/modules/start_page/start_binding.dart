import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/start_page/start_controller.dart';

class StartBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(StartController(apiRepository: Get.find()), permanent: true);
  }
}
