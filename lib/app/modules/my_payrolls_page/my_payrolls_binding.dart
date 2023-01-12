import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_controller.dart';


class MyPayrollsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      MyPayrollsController(apiRepository: Get.find()),
      permanent: true,
    );
  }
}
