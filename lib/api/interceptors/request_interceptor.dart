import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "gNC9rUS9CE7sDdQkJ+GJZoWw1gFyRwu4QhsURaJpYRHR9Fk5uLYHB2YYHEsVODyZ~1742~string~638094191730984701";
  return request;
}
