import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "DYFYz4IHoV7gXecPRtXarJPgU8w94Ax50pMdGYOY766bNhS03hB+h/fPn7QwbB8l~1742~string~638091536345221622";
  return request;
}
