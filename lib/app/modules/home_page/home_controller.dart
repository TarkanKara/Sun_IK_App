// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_controller.dart';

class HomeController extends GetxController {
  MyPayrollsController myPayrollsController = Get.put(MyPayrollsController());
  @override
  void onInit() {
    print('Home sayfası başlatıldı');
    super.onInit();
  }
}
