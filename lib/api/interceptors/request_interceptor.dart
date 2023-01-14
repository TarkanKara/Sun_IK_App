import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "r5daiY4K1XwQ2XPmZsIj/sfDYbgQQIe1k//imtxMDH45GTDCkQ7f/IFmnAgxzVFc~1742~string~638093056111218139";
  return request;
}
