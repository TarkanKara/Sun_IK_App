// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';

FutureOr<Request> requestInterceptor(request) async {
  GetStorage token = GetStorage();

  print("${token.read("token2") != null}");

  token.read("token2") != null
      ? request.headers["vbtauthorization"] = token.read("token2")
      : request.headers["vbtauthorization"] =
          "VIuOyMfdGy0iy3vWdSw4xSmadAG6ZoIlmmhxmuQ2IVNpIfn/JcDCMnOb3tXxbA0b~1742~string~638093897098022811";

  print("requestInceptor");

  return request;
}
