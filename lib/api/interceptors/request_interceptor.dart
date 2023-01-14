import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(request) async {
  request.headers["vbtauthorization"] =
      "yt83mSsx0DqOlfnKEiM19ZCIwZPK7+bUi9Yk9NG2ZmyFj65CjO/bWQVtJKSZIP6f~1742~string~638093370391690137";
  return request;
}
