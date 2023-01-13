import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "Hcci/1GwgiIrPDuJ8621AP0fWKKiq1d60gGnlauh/EmAYwD1LEujlFAzrgtcTYg/~1~string~638092455274255313";
  return request;
}
