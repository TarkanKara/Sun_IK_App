// ignore_for_file: unused_local_variable, avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/shared/services/my_payroll_service.dart';

import '../../app/models/login/login_model.dart';

class LoginService extends GetConnect {
  MyPayrollService myPayrollService = MyPayrollService();

   //getlogin()
  Map<String, String>? loginheaderss = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  //getLogin()
  Future<LoginModel?> getLogin(String email, password) async {
    try {
    
      var data = {
        "SelectedIdLanguage": 0,
        "Email": email,
        "Password": password,
        "FirmId": 5,
        "PinCode": "string",
        "DeviceID": "string",
        "DomainFirmId": 0
      };

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/Account/Token';

      var res = await post(url, data, headers: loginheaderss);

      print(res.body);

      return LoginModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
