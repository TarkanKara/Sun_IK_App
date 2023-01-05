import 'package:get/get.dart';
import 'package:sun_ik_app/shared/services/sun_ik_service.dart';

class DependencyInjection {
  //
  static init() async {
    await Get.putAsync(() => SunIkService().init());
  }
}
