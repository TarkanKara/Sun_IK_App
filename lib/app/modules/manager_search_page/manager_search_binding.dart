import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/manager_search_page/manager_search_controller.dart';

class ManagerSearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ManagerSearchPageController());
  }
}
