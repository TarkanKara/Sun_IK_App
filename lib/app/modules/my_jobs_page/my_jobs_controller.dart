// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/app/models/my_request/my_pending_jobs_model.dart';

import '../../../api/api_repository.dart';

class MyJobsController extends GetxController {
  final ApiRepository apiRepository;
  MyJobsController({required this.apiRepository});

  //Model
  MyPendingJobs myJobs = MyPendingJobs();
  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    getMyJobs();
    print("MyJobs View Yüklendi");
    super.onInit();
  }

  //getMyJobs
  getMyJobs() async {
    status.value = RxStatus.loading();
    myJobs = (await apiRepository.getMyPendingJobs())!;
    status.value = RxStatus.success();
  }
}
