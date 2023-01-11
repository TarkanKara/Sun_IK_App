// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/home_page/home_controller.dart';
import 'package:sun_ik_app/utils/const.dart';

import '../../routes/app_pages.dart';
import '../../widgets/home_menu_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Const.STATUSBARCOLOR),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 2.h,
        ),
        Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  width: 28.7.w,
                  height: 10.h,
                  //color: Colors.red,
                  child: Row(children: [
                    CircleAvatar(
                      radius: 3.5.h,
                      backgroundImage: const AssetImage(Const.PROFILEAVATAR),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
                  ]),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 16.w,
                height: 10.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Const.SUNLOGO), fit: BoxFit.fill)),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 25.w,
                height: 10.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Icon(
                                Icons.notifications,
                                size: 3.7.h,
                                color: Const.NOTIFICATIONICONCOLOR,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 0.2.h),
                                width: 2.h,
                                height: 2.h,
                                decoration: const BoxDecoration(
                                    color: Const.NOTIFICATIONCONTAINERCOLOR,
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text(
                                  '0',
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          icon: Image.asset(
                            Const.CIKISYAPICON,
                            scale: .3.h,
                            color: Const.CIKISYAPICONCOLOR,
                          )),
                    ]),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 41.5.h,
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 2.h,
              mainAxisSpacing: 2.h,
            ),
            children: [
              HomeMenuCard(
                cardPressed: () {},
                cardName: Const.TALEPLERIMTEXT,
                cardInfo: '19 Notifications',
                cardIcon: Const.TALEPLERIMICON,
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {},
                cardName: Const.ONAYLARIMTEXT,
                cardInfo: '2 Notifications',
                cardIcon: Const.ONAYLARIMICON,
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {},
                cardName: Const.ISLERIMTEXT,
                cardInfo: '9 Notifications',
                cardIcon: Const.ISLERIMICON,
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {
                  Get.toNamed(Routes.MY_PAYROLLS);
                },
                lastBordroPressed: () {
                  controller.myPayrollsController.indexfinal.value = 0;
                  controller.myPayrollsController.getMyPayrollPdf(0);
                  Get.toNamed(Routes.PDF_VIEW);
                },
                cardName: Const.BORDROLARIMTEXT,
                cardInfo: '19 Bordro',
                cardIcon: Const.BORDROLARIMICON,
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: true,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 20.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Const.MENUCOLOR,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 3,
                        color: Colors.grey,
                        spreadRadius: 0,
                        offset: Offset(0, 1))
                  ]),
              child: Column(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                            flex: 2,
                            child: Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 3.h, right: 3.h),
                                  width: 5.h,
                                  height: 5.h,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(Const.IZINLERIMICON))),
                                ),
                                Text(
                                  Const.IZINLERIMTEXT,
                                  style: GoogleFonts.inter(
                                    color: Const.BASLIKTEXTCOLOR,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )),
                        Flexible(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              width: 5.h,
                              height: 5.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          Const.IZINLERIMEKLEICON),
                                      scale: .1.h)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    Const.IZINBAKIYESITEXT,
                                    style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    '0.0 Gün',
                                    style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    Const.IZINBASLANGICTEXT,
                                    style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    '08.01.2023',
                                    style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: .3.h),
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    Const.IZINGUNTEXT,
                                    style: GoogleFonts.inter(
                                      color: Const.ACIKLAMATEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: .5.h,
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: .3.h),
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    '28.0 Gün',
                                    style: GoogleFonts.inter(
                                      color: Const.BASLIKTEXTCOLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
