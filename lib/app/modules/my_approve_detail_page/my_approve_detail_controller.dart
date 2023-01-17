// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_controller.dart';

import '../../models/my_approve_detail/my_approve_detail.dart';

class MyApproveDetailController extends GetxController {
  final ApiRepository apiRepository;
  MyApproveDetailController({required this.apiRepository});

  //
  MyApproveDetailModel myApproveDetailModel = MyApproveDetailModel();
  //
  MyApproveController myApproveController =
      Get.put(MyApproveController(apiRepository: Get.find()));

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    /* getMyApproveDetail(
        myApproveController.myRwquestGetPending.data!.pendingRequestList![myApproveController.index.value].iDMASTER,
        myApproveController.myRwquestGetPending.data!
            .pendingRequestList![myApproveController.index.value].rEQTYPE);
    print("MyApproveDetail View Yüklendi");
    super.onInit(); */
  }

  getMyApproveDetail(int? idMater, int? detailType) async {
    status.value = RxStatus.loading();
    myApproveDetailModel =
        (await apiRepository.getMyApproveDetail(idMater!, detailType!))!;
    status.value = RxStatus.success();
  }
}
