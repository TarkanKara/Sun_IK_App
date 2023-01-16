import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "acuxhnoNavkmd9Glvq9l2uRJzIrq9O3euCrsG21YF7QNpcVcCef9Yt3B2/XPWs2E~1742~string~638094757867793947";
  return request;
}
