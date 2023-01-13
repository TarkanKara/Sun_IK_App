import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pin_code_create_page/pin_code_create_controller.dart';

class PinCodeCreateBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(PinCodeCreateController());
  }

}