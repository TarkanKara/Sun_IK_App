
import 'package:get/get_connect.dart';
import 'package:sun_ik_app/api/base_provider.dart';

class ApiProvider extends BaseProvider {
  Future<Response> urlPost(String path, Object data,Map<String, String> header) {
    return post(path, data, headers: header);
  }

  Future<Response> urlGet(String path) {
    return get(path);
  }
}