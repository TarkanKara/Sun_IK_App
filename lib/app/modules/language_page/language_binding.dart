import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/language_page/language_controller.dart';

class LanguageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LanguageController());
  }
}
