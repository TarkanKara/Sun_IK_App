// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_detail_model.dart';

class RequestDetailController extends GetxController {
  final ApiRepository apiRepository;
  RequestDetailController({required this.apiRepository});

  //Model
  MyRequestDetailModel requestDetail = MyRequestDetailModel();

  //Değişkenler
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  @override
  void onInit() {
    getMyRequestDetail(109, 6);
    print("Request Detail View Yüklendi");
    super.onInit();
  }

  //getMyRequestDetail
  getMyRequestDetail(int idMater, detailType) async {
    status.value = RxStatus.loading();
    requestDetail =
        (await apiRepository.getMyRequestDetail(idMater, detailType))!;
    status.value = RxStatus.success();
  }
}
