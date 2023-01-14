import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "VOL2IPv2rMXjV8+vz0PMG5HSL3Mi7odBcGXE/IaXicWiwkN9RQJ3Zd6gmR2yrLcd~1742~string~638092965075896168";
  return request;
}
