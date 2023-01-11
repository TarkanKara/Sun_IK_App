// ignore_for_file: avoid_print, unused_field

import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_controller.dart';

import '../../../shared/services/home_landing_info_service.dart';
import '../../models/home/get_landing_page_info.dart';

class HomeController extends GetxController {
  MyPayrollsController myPayrollsController = Get.put(MyPayrollsController());

  GetLandingPageInfoModel infoModel = GetLandingPageInfoModel();
  HomeLandingInfoService homeService = HomeLandingInfoService();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getLandingPage();

    print('Home sayfası başlatıldı');
    super.onInit();
  }

  //getLandingPage
  Future<dynamic> getLandingPage() async {
    isLoading.value = false;
    infoModel = (await homeService.getHomaLandingInfo())!;
    isLoading.value = true;
  }
}
