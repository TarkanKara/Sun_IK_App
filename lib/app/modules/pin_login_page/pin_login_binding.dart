import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pin_login_page/pin_login_controller.dart';

class PinLoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PinLoginController());
    
  }
  
}