import 'api_provider.dart';

class ApiRepository {
  final ApiProvider apiProvider;

  ApiRepository({
    required this.apiProvider,
  });

  //
  Future<dynamic> login(String email, String password) async {
    final res = await apiProvider.urlGet('/products/1');
    if (res.statusCode == 200) {
      return res.body;
    }
  }
}
