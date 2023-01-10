import 'package:get/get_connect/http/src/response/response.dart';
import 'package:sun_ik_app/api/base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response> urlPost(String path, Object data) async {
    return post(path, data);
  }

  Future<Response> urlGet(String path) {
    return get(path);
  }

  //Diğer CRUD metotları buraya yazılacak
}
