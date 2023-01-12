import 'package:sun_ik_app/api/api_model/payroll_model.dart';

import 'api_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;

  // Future<dynamic> login(String email, String password) async {
  //   final res = await apiProvider.urlGet('/products/1');
  //   if (res.statusCode == 200) {
  //     return res.body;
  //   }
  // }
  Future<PayrollModel?> getPayroll() async {
    var res = await apiProvider.urlPost("EmployeeDocuments/GetPayrollPeriods",
        {"Date": "2023-01-12T12:29:14.575Z"},{});
    if (res.statusCode == 200) {
      print(res.body);
      return PayrollModel.fromJson(res.body);
    }
  }

  Future<PayrollModel?> getMyPicture() async {
    var res = await apiProvider.urlGet("EmployeeReport/GetProfilPicture");
    if (res.statusCode == 200) {
      print(res.body);
      return PayrollModel.fromJson(res.body);
    }
  }
}
