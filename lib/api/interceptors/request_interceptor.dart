import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "a6WA68K9UcJJTtm+NXjBZCXkQbaf6n1VUmdI5uM3/1q8cpbvRZpvPcZUZl0FTmhI~1742~string~638094615554825576";
  return request;
}
