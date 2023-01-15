import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "RNeN3kq5LuaZRJF8g2f4g7rIuEvQ3DdlsE9c4MwrcNkPSSRqs57wOkawKNNlrc28~1742~string~638093821312405152";
  return request;
}
