// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/app/models/my_payroll_pdf_model.dart';

import '../../app/models/my_payroll_model.dart';

class MyPayrollService extends GetConnect {
  static const token =
      "s7NI1h36djqvaCBipGJNgs6oOR4gjVXUJcv7dEJG2s/uw0KkkAccbOyH5KrgFvxc~1~string~638090226083926066";

  Map<String, String>? headerss = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vbtauthorization': token,
  };

  //getMyPayroll
  Future<MyPayrollModel?> getMyPayroll() async {
    try {
      var headers = headerss;

      var data = {"Date": "2023-01-10T15:06:19.951Z"};

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/GetPayrollPeriods';

      var res = await post(url, data, headers: headerss);

      print(MyPayrollModel.fromJson(res.body).data);

      return MyPayrollModel.fromJson(res.body);
    } catch (e) {
      print("{$e}");
    }
    return null;
  }

  //getMyPayrolPdf
  Future<MyPayrollPdfModel?> getMyPayrolPdf(
      int? year, month, String? documentId) async {
    try {
      var headers = headerss;

      var data = {
        "YEAR": /* 2021  */ year,
        "MONTH": /* 3 */ month,
        "DOCUMENTUID": /* "264e4a78-ec28-47d4-b2ba-0256fddce4a6" */ documentId,
      };

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/EmployeePayrollDownload';

      var res = await post(url, data, headers: headers);

      print(res.body);
      return MyPayrollPdfModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
