// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_print

import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sun_ik_app/app/models/login/login_model.dart';

FutureOr<Request> requestInterceptor(request) async {

  GetStorage token = GetStorage();
  LoginModel loginModel = LoginModel();

  print("requestInterceptor TokenBilgisi : ${token.read("token2")}");
  print("requestInterceptor ModelTokenBilgisi : ${loginModel.token}");

  token.read("token2") != null
      ? request.headers["vbtauthorization"] = token.read("token2")
      : {};

  return request;
}
