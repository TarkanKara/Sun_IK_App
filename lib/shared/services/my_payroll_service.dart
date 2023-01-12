// ignore_for_file: avoid_print, unused_local_variable

import 'package:get/get.dart';

import '../../app/base/token_client.dart';
import '../../app/models/my_payroll/my_payroll_model.dart';
import '../../app/models/my_payroll/my_payroll_pdf_model.dart';

class MyPayrollService extends GetConnect {
  

  //getMyPayroll() - getMyPayrolPdf() - getHomaLandingInfo()
  Map<String, String>? headerss = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'vbtauthorization': TokenClient.token,
  };

 

  //getMyPayroll
  Future<MyPayrollModel?> getMyPayroll() async {
    try {
      var data = {"Date": "2023-01-10T15:06:19.951Z"};

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/GetPayrollPeriods';

      var res = await post(url, data, headers: headerss);

      //print(MyPayrollModel.fromJson(res.body).data);

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
      var data = {
        "YEAR": /* 2021  */ year,
        "MONTH": /* 3 */ month,
        "DOCUMENTUID": /* "264e4a78-ec28-47d4-b2ba-0256fddce4a6" */ documentId,
      };

      var url =
          'https://suniktest.suntekstil.com.tr/mobileapi/api/EmployeeDocuments/EmployeePayrollDownload';

      var res = await post(url, data, headers: headerss);

      //print(res.body);
      return MyPayrollPdfModel.fromJson(res.body);
    } catch (e) {
      print("$e");
    }
    return null;
  }
}
