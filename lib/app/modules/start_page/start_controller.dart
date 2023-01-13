// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

import '../../models/my_request_get_pending_model.dart/my_request_get_pending_model.dart';

class StartController extends GetxController {
  final ApiRepository apiRepository;
  StartController({required this.apiRepository});

  //Model
  MyRequestGetPending myRwquestGetPending = MyRequestGetPending();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    getMyRequestGetPending();
    print("Start View Yüklendi");
    super.onInit();
  }

  //getMyRequestGetPending
  getMyRequestGetPending() async {
    status.value = RxStatus.loading();
    myRwquestGetPending = (await apiRepository.getMyRequestGetPending())!;
    status.value = RxStatus.success();
  }
}
