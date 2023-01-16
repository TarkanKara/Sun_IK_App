// ignore_for_file: avoid_print, unused_field

import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../models/home/get_landing_page_info.dart';
import '../../models/home/my_profile_model.dart';
import '../login_page/login_controller.dart';
import '../my_payrolls_page/my_payrolls_controller.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  //MyPayrollsController
  MyPayrollsController myPayrollsController = Get.put(
    MyPayrollsController(apiRepository: Get.find()),
    permanent: true,
  );

  //LoginController
  LoginController loginController =
      Get.put(LoginController(apiRepository: Get.find()), permanent: true);

  //Model
  GetLandingPageInfoModel infoModel = GetLandingPageInfoModel();
  MyProfileModel myProfileModel = MyProfileModel();

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  RxList user1 = [].obs;
  RxList user2 = [].obs;

  @override
  void onInit() {
    getLandingPage();
    print("Home View Yüklendi....");
    super.onInit();
  }

  //getLandingPage
  getLandingPage() async {
    status.value = RxStatus.loading();
    infoModel = (await apiRepository.getHomaLandingInfo(true))!;
    getHomeMyProfile();
  }

  //getHomeMyProfile
  getHomeMyProfile() async {
    myProfileModel = (await apiRepository.getMyProfile())!;
    status.value = RxStatus.success();
  }

  
}
