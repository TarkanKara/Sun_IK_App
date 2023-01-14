// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../models/my_request_get_pending_model.dart/my_request_get_pending_model.dart';

class MyApproveController extends GetxController {
  final ApiRepository apiRepository;
  MyApproveController({required this.apiRepository});
  //Model
  MyRequestGetPending myRwquestGetPending = MyRequestGetPending();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    getMyRequestGetPending();
    print("MyApprove View Yüklendi");
    super.onInit();
  }

  //getMyRequestGetPending
  getMyRequestGetPending() async {
    status.value = RxStatus.loading();
    myRwquestGetPending = (await apiRepository.getMyRequestGetPending())!;
    status.value = RxStatus.success();
  }
}
