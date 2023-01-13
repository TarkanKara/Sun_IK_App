import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "mEVcvjN9Qrj3eta8js34Y18AbTCrWEdOqAsjGa7pxVNvTlJzDtc13aBaA4U68ma9~1742~string~638092407888388277";
  return request;
}
