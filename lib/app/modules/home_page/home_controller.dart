// ignore_for_file: avoid_print, unused_field

import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/login_page/login_controller.dart';
import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_controller.dart';

import '../../../shared/services/home_landing_info_service.dart';
import '../../models/home/get_landing_page_info.dart';
import '../../models/home/my_profile_model.dart';

class HomeController extends GetxController {
  //
  MyPayrollsController myPayrollsController = Get.put(MyPayrollsController());
  LoginController loginController = Get.put(LoginController());

  //
  HomeLandingInfoService homeService = HomeLandingInfoService();

  //
  GetLandingPageInfoModel infoModel = GetLandingPageInfoModel();
  MyProfileModel myProfileModel = MyProfileModel();

  //
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getLandingPage();
    //print(getToken());
    print('Home sayfası başlatıldı');
    super.onInit();
  }

  //getLandingPage
  Future<dynamic> getLandingPage() async {
    //getHomeMyProfile();
    isLoading.value = false;
    infoModel = (await homeService.getHomaLandingInfo())!;
    isLoading.value = true;
  }

  //
  getHomeMyProfile() async {
    isLoading.value = false;
    myProfileModel = (await homeService.getMyProfile())!;
    isLoading.value = true;
  }

  //
  String getToken() {
    return loginController.loginModel.token.toString();
    //myPayrollsController.myPayrolService.headerss{};
  }
}
