import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "apmz6x4xrsPQS9r+ym2QQz7jIQYs4IoDuNebyIsIjqUVLT82eSpuwYd8qtgiysd5~1742~string~638093070764205509";
  return request;
}
