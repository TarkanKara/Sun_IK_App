// ignore_for_file: ant_identifier_names

import 'package:get/get.dart';

import 'package:sun_ik_app/app/modules/language_page/language_binding.dart';
import 'package:sun_ik_app/app/modules/language_page/language_view.dart';

import 'package:sun_ik_app/app/modules/login_page/login_binding.dart';
import 'package:sun_ik_app/app/modules/login_page/login_view.dart';

import 'package:sun_ik_app/app/modules/home_page/home_binding.dart';
import 'package:sun_ik_app/app/modules/home_page/home_view.dart';
import 'package:sun_ik_app/app/modules/manager_search_page/manager_search_view.dart';
import 'package:sun_ik_app/app/modules/my_jobs_page/my_jobs_binding.dart';
import 'package:sun_ik_app/app/modules/my_jobs_page/my_jobs_view.dart';
import 'package:sun_ik_app/app/modules/my_approve_detail_page/my_approve_detail_binding.dart';
import 'package:sun_ik_app/app/modules/my_approve_detail_page/my_approve_detail_view.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_binding.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_view.dart';

import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_binding.dart';
import 'package:sun_ik_app/app/modules/my_payrolls_page/my_payrolls_view.dart';
import 'package:sun_ik_app/app/modules/notification_detail_page/notification_detail_binding.dart';
import 'package:sun_ik_app/app/modules/notification_detail_page/notification_detail_view.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_binding.dart';
import 'package:sun_ik_app/app/modules/notification_page/notification_view.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_binding.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_view.dart';

import 'package:sun_ik_app/app/modules/pin_code_change_page/pin_code_change_view.dart';
import 'package:sun_ik_app/app/modules/pin_code_create_page/pin_code_create_binding.dart';
import 'package:sun_ik_app/app/modules/pin_code_create_page/pin_code_create_view.dart';
import 'package:sun_ik_app/app/modules/pin_login_page/pin_login_binding.dart';
import 'package:sun_ik_app/app/modules/pin_login_page/pin_login_view.dart';
import 'package:sun_ik_app/app/modules/request_page/request_binding.dart';
import 'package:sun_ik_app/app/modules/request_page/request_view.dart';

import 'package:sun_ik_app/app/modules/splash_page/splash_binding.dart';
import 'package:sun_ik_app/app/modules/splash_page/splash_view.dart';

import 'package:sun_ik_app/app/modules/start_page/start_binding.dart';
import 'package:sun_ik_app/app/modules/start_page/start_view.dart';

import '../modules/manager_search_page/manager_search_binding.dart';
import '../modules/pin_code_change_page/pin_code_change_binding.dart';
import '../modules/request_page_detail/request_detail_binding.dart';
import '../modules/request_page_detail/request_detail_view.dart';

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
      name: Routes.LANGUAGE,
      page: () => const LanguagePage(),
      binding: LanguageBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.MY_PAYROLLS,
      page: () => const MyPayrollsView(),
      binding: MyPayrollsBinding(),
    ),
    GetPage(
      name: Routes.PDF_VIEW,
      page: () => const PdfView(),
      binding: PdfBinding(),
    ),
    GetPage(
      name: Routes.CREATEPINCODE,
      page: () => const PinCodeCreateView(),
      binding: PinCodeCreateBinding(),
    ),
    GetPage(
      name: Routes.CHANGEPINCODE,
      page: () => const PinCodeChangeView(),
      binding: PinCodeChangeBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.MANAGERSEARCH,
      page: () => const ManagerSearchView(),
      binding: ManagerSearchBinding(),
    ),
    GetPage(
      name: Routes.REQUEST,
      page: () => const RequestView(),
      binding: RequestBinding(),
    ),
    GetPage(
      name: Routes.MYjOBS,
      page: () => const MyJobsView(),
      binding: MyJobsBinding(),
    ),
    GetPage(
      name: Routes.MY_APPROVE_DETAIL,
      page: () => const MyApproveDetailView(),
      binding: MyApproveDetailBinding(),
    ),
    GetPage(
      name: Routes.MY_APPROVE,
      page: () => const MyApproveView(),
      binding: MyApproveBinding(),
    ),
    GetPage(
      name: Routes.REQUEST_DETAIL,
      page: () => const RequestDetailView(),
      binding: RequestDetailBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: Routes.PIN_LOGIN,
      page: () => const PinLoginView(),
      binding: PinLoginBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATION_DETAIL,
      page: () => const NotificationDetailView(),
      binding: NotificationDetailBinding(),
    ),
  ];
}
