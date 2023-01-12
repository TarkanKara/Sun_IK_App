import 'package:get/get_connect.dart';
import 'package:sun_ik_app/api/base_provider.dart';

class ApiProvider extends BaseProvider {
  //
  Future<Response> postMethod(String? url, Object body,
      {Map<String, String>? headers,}) {
    return post(url, body, headers: headers);
  }

  //
  Future<Response> getMethod(String url,
      {Map<String, String>? headers, Map<String, dynamic>? query}) {
    return get(url);
  }
}
