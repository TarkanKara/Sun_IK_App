import 'package:get/get.dart';

import 'api/api_provider.dart';
import 'api/api_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiProvider(), permanent: false);
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: false);
  }
}
