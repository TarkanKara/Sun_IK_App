// ignore_for_file: avoid_print, unused_local_variable

import 'package:get/get.dart';
import 'package:sun_ik_app/app/base/token_client.dart';
import 'package:sun_ik_app/shared/services/my_payroll_service.dart';

import '../../app/models/home/get_landing_page_info.dart';
import '../../app/models/home/my_profile_model.dart';

class HomeLandingInfoService extends GetConnect {
  MyPayrollService myPayrollService = MyPayrollService();

   //getMyProfile()
  Map<String, String>? myProfileheaderss = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vbtauthorization': TokenClient.token,
    'userId': '1',
  };

  //getHomaLandingInfo()
  Map<String, String>? headerss = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vbtauthorization': TokenClient.token,
  };

  //GetLandingPageInfoModel
  Future<GetLandingPageInfoModel?> getHomaLandingInfo() async {
    try {
      var params = {'isFirstLogin': 'true'};

      var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeReport/GetLandingPageInfo?$query';

      var res = await get(url, headers: myPayrollService.headerss);
      //print(res.body);
      return GetLandingPageInfoModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //MyProfileModel
  Future<MyProfileModel?> getMyProfile() async {
    try {
      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeReport/GetProfilPicture';

      var res = await get(url, headers: myProfileheaderss);

      print(res.body);
      return MyProfileModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
