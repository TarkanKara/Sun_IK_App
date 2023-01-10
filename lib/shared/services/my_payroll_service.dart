import 'package:get/get.dart';

import '../../app/models/my_payroll_model.dart';

class MyPayrollService extends GetConnect {
  Future<MyPayrollModel?> getMyPayroll() async {
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'vbtauthorization':
            'zdIdhAMgo/60X6P6B1VwP9uFE5WpHTfyyG0Xhhw+uHSQMok1BrEEU3M46SnPRzQq~1~string~638089777160339107',
      };

      var data = {"Date": "2023-01-10T15:06:19.951Z"};

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/GetPayrollPeriods';

      var res = await post(url, data, headers: headers);

      print(res.body);

      return MyPayrollModel.fromJson(res.body);

    } catch (e) {
      print("{$e}");
    }
    return null;
  }
}
