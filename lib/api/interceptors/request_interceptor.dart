import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] = "y9TfXLaRSL3HoV1vkb8WdDGttIMiIWZnshrwHf7LE/m8SOw5YylFIVHRZRWRKdbe~1~string~638091369579185748";
  return request;
}