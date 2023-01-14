import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "FO8bSEDiFHfuvLyzBRVzEDIdV9DRHrdT7Ub06LCxbMBOSfoKG26+sc4pSIq9CL10~1742~string~638093198282424280";
  return request;
}
