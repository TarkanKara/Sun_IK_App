import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "WKoMn2uQoYonCyZtPWWWayz7aN/l2GU1wN9bhgXRl0JzS6zoy1ymfZ9O2hbOuHWR~1742~string~638091686988888975";
  return request;
}
