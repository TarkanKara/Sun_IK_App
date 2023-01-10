import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_provider.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiProvider(), permanent: true);
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
  }
}
