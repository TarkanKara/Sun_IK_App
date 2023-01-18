// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';
import 'package:sun_ik_app/app/models/my_leaves/my_leaves_model.dart';

class MyLeavesController extends GetxController {
  final ApiRepository apiRepository;
  MyLeavesController({required this.apiRepository});

  //Model
  MyLeavesModel myLeavesModel = MyLeavesModel();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;
  //
  @override
  void onInit() {
    getMyLeaves();
    print("My Leaves View Yüklendi");
    super.onInit();
  }

  //getMyLeaves
  getMyLeaves() async {
    status.value = RxStatus.loading();
    myLeavesModel = (await apiRepository.getMyLeaves())!;
    status.value = RxStatus.success();
  }
}
