import 'package:get/get.dart';

import '../my_payrolls_page/my_payrolls_controller.dart';

class PdfController extends GetxController {
  MyPayrollsController myPayrollController = Get.put(
    MyPayrollsController(apiRepository: Get.find()),
    permanent: false,
  );
}
