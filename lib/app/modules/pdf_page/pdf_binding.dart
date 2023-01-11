import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_controller.dart';

class PdfBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PdfController());
  }
}
