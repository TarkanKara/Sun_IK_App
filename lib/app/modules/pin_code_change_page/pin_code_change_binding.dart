import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pin_code_change_page/pin_code_change_controller.dart';


class PinCodeChangeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(PinCodeChangeController());
  }

}