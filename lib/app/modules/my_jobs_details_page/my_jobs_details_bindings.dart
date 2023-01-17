import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_jobs_details_page/my_jobs_details_controller.dart';

class MyJobsDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MyJobsDetailsController());
  }
  
}