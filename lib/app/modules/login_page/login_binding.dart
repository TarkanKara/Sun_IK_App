import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
