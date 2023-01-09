// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/home_page/home_binding.dart';
import 'package:sun_ik_app/app/modules/home_page/home_view.dart';
import 'package:sun_ik_app/app/modules/start_page/start_binding.dart';
import 'package:sun_ik_app/app/modules/start_page/start_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.START;

  static final routes = [
    GetPage(
      name: Routes.START,
      page: () => const StartView(),
      binding: StartBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
