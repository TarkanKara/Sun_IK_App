import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

import '../../models/my_team/my_team_model.dart';

class MyTeamController extends GetxController {
   final ApiRepository apiRepository ;

  MyTeamController({required this.apiRepository});

  @override
  void onInit() {
    getMyTeam();
    super.onInit();
  }

  MyTeamModel myTeamModel = MyTeamModel();
  Rx<RxStatus> status = RxStatus.empty().obs;

  getMyTeam() async{
  status = RxStatus.loading().obs;
   myTeamModel = (await apiRepository.getMyTeam())!;
  status = RxStatus.success().obs;
  }
}
