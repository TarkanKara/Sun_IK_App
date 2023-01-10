// ignore_for_file: unused_local_variable

import 'package:sun_ik_app/api/api_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<dynamic> login(String email, String password) async {
    final res = await apiProvider
        .urlPost("api/login", {"email": email, "password": password});

    if (res.statusCode == 200) {
      return res.body;
    }
  }
}
