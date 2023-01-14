import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "936tcSjVwHLuzX/N1bPKOXWvDfoEIImw4dvwus/NP7rgTv1tRzkI7KM33UtnSRK5~1~string~638092918069522490";
  return request;
}
