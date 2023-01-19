// ignore_for_file: avoid_print, unused_field, unnecessary_brace_in_string_interps

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../api/api_repository.dart';
import '../../models/home/get_landing_page_info.dart';
import '../../models/home/my_profile_model.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  //Model
  GetLandingPageInfoModel? infoModel = GetLandingPageInfoModel();
  MyProfileModel? myProfileModel = MyProfileModel();
  // MyPayrollsController myPayrollsController =  MyPayrollsController(apiRepository: Get.find());

  final Uri _url =
      Uri.parse('https://www.educaedu-turkiye.com/kurumlar/sun-akademi-uni50');

  //
  Rx<RxStatus> status = RxStatus.empty().obs;

  //
  RxBool isAkademi = false.obs;

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
    infoModel = await apiRepository.getHomaLandingInfo(true);
    getHomeMyProfile();
  }

  //getHomeMyProfile
  getHomeMyProfile() async {
    myProfileModel = await apiRepository.getMyProfile();
    isSunAkademi();
    status.value = RxStatus.success();
  }

  isSunAkademi() {
    if (infoModel!.data!.IsManager == false) {
      for (var element in infoModel!.data!.menuInfo) {
        if (element.MENUNAME == "SunAkademi") {
          isAkademi.value = true;
        } else {
          isAkademi.value = false;
        }
      }
    } else {
      isAkademi.value = false;
    }
  }

  Future<void> sunAkademiUrl() async {
    if (await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
