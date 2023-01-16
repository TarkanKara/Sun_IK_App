import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "vs7jGaVLi4yRStDBUsv1CGJofQfvyAnGcFtxOU4DzTm/xUunctky6NuGDq6Ojwf4~1~string~638094926745843088";
  return request;
}
