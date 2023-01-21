import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/modules/my_jobs_page/my_jobs_controller.dart';

class MyJobsDetailsController extends GetxController {
  final ApiRepository apiRepository;
  MyJobsDetailsController({required this.apiRepository});
  MyJobsController myJobsController = MyJobsController(apiRepository: Get.find());


  @override
  void onInit() {
    myJobsController.getMyJobs();    //getMyRequestDetail(idMaster, IdWorkType);
    print("Request Detail View Yüklendi");
    super.onInit();
  }
}
