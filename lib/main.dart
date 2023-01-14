// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app_binding.dart';

import 'app/routes/app_pages.dart';
import 'app/translation/translation.dart';

Future<void> main() async {
  print("GetStorage Başlatıldı");
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => GetMaterialApp(
        initialRoute: Routes.HOME,
        getPages: AppPages.routes,
        locale: Get.deviceLocale,
        translations: TranslationLang(),
        enableLog: true,
        debugShowCheckedModeBanner: false,
        initialBinding: AppBinding(),
        title: 'Sun IK App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
