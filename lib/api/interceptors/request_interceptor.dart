import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "e7QGE7HfC61T0+1ku9hNP1fHhATUO1yjPo3gkcXAenmuwkuwva+Xef1wCDTMWXiH~1742~string~638093339073743795";
  return request;
}
