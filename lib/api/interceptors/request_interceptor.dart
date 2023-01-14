import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "TUTbQ3An8fW1qhn/IZl1Y6utIZ8KnpD3c0zvzgz6RK4YMn6A3A/DJh0f8cEQ9MnK~1742~string~638093321180821499";
  return request;
}
