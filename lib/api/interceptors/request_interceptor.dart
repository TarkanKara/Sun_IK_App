import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "GrMvEh18SsxD/Dey6i+3rrxWo+MJn+mbi2bsKkEiQb9LmfShsndhtp0GOEqCjKdn~1~string~638092896243036895";
  return request;
}
