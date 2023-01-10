import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "LW4C4lFiLohJ1lY0IQTuezfsuKUc62NowymKL+5UoyUsbIhfw2TtBLgYs53/Ioky~1~string~638089550759101501";

  return request;
}
