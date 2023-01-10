import 'package:get/get.dart';
import 'package:sun_ik_app/api/api.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstant.baseUrl;
    httpClient.addResponseModifier(responseInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
  }
}
