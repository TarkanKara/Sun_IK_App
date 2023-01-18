import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_team_page/my_team_controller.dart';

class MyTeamBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyTeamController());
  }
}
