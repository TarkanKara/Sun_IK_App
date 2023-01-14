import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "rJlBX/G2UwUmELTCmsXLlkF6dx6j3wvjLoZ2Hjj1ynxvmuS5fnCtd7Y4AD+poanT~1~string~638092955344744277";
  return request;
}
