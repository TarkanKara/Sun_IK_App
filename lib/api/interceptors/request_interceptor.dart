import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "AhYlfXdb2Z+bXJddyTbyCQwz3FumE+P78HQutg30i478WUZPnu1n90dH9sBk59mZ~1~string~638092931217494801";
  return request;
}
