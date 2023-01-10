import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/translation/translation.dart';
import 'package:sun_ik_app/app_binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => GetMaterialApp(
        initialRoute: Routes.START,
        getPages: AppPages.routes,
        locale: Get.deviceLocale,
        translations: TranslationLang(),
        enableLog: true,
        debugShowCheckedModeBanner: false,
        title: 'Sun IK App',
        initialBinding: AppBinding(), //AppBindings
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
