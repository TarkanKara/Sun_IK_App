// ignore_for_file: unused_local_variable

import 'package:sun_ik_app/api/api_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;
/* 
  Future<dynamic> login(String email, String password) async {
    final res = await apiProvider
        .urlPost("api/login", {"email": email, "password": password});

    if (res.statusCode == 200) {
      return res.body;
    }
  } */

  Future<dynamic> getMyPayrolls() async {
    try {
      final res = await apiProvider.urlPost(
          "EmployeeDocuments/GetPayrollPeriods",
          {"Date": "2023-01-10T10:00:23.560Z"});
      print(res.statusText);
      return res.body;
    } catch (e) {
      print(e);
    }
  }
}
