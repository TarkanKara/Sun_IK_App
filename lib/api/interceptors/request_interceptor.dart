// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';

FutureOr<Request> requestInterceptor(request) async {
  GetStorage token = GetStorage();

  print("requestInterceptor TokenBilgisi : ${token.read("token2") != null}");

  //token.read("token2") != null
       request.headers["vbtauthorization"] = "3QHf/JVAYZFVmG6TW40LFTMhuHwNFKTb4mom7RE7oGkeiFmOr42vjQwlbCIpQwYB~1742~string~638094707153945267";
      //: {};

  return request;
}
