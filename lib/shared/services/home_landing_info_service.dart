// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/shared/services/my_payroll_service.dart';

import '../../app/models/home/get_landing_page_info.dart';

class HomeLandingInfoService extends GetConnect {
  MyPayrollService myPayrollService = MyPayrollService();

  Future<GetLandingPageInfoModel?> getHomaLandingInfo() async {
    try {
      var params = {'isFirstLogin': 'true'};

      var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeReport/GetLandingPageInfo?$query';

      var res = await get(url, headers: myPayrollService.headerss);
      print(res.body);
      return GetLandingPageInfoModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
