import 'package:get/get.dart';

import 'my_jobs_controller.dart';


class MyJobsBinding implements Bindings {
  //
  @override
  void dependencies() {
    Get.put(
      MyJobsController(apiRepository: Get.find()),
      permanent: true,
    );
  }
}
