// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';

FutureOr<Request> requestInterceptor(request) async {
  GetStorage token = GetStorage();

  print("requestInterceptor TokenBilgisi : ${token.read("token2") != null}");

  //token.read("token2") != null
      request.headers["vbtauthorization"] = "Kl0dXLSKSdEIEQYFWCliO35qjyXJIWm3jzcw+O0b9Ck8SyFMIc1qEJ9oOBz8XVom~1742~string~638094690653568510";
      //: {};

  return request;
}
