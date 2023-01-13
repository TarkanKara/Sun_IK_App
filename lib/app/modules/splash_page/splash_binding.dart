import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/splash_page/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
