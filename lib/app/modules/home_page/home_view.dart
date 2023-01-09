import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/home_page/home_controller.dart';

import '../../widgets/home_widgets/home_menu_card.dart';

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
            const SystemUiOverlayStyle(statusBarColor: Color(0xffEF3E52)),
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
                      backgroundImage:
                          const AssetImage('assets/images/home_assets/ic_avatar_profile.png'),
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
                    //color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/images/home_assets/ic_sun_logo.PNG'),
                        fit: BoxFit.fill)),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 25.w,
                height: 10.h,
                //color: Colors.red,
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
                                color: Color(0xffFDC330),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 0.2.h),
                                width: 2.h,
                                height: 2.h,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
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
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/home_assets/ic_cikis_yap.png',
                            scale: .3.h,
                            color: const Color(0xffFF5B5B),
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
                cardName: 'Taleplerim',
                cardInfo: '19 Notifications',
                cardIcon: 'assets/images/home_assets/ic_taleplerim.png',
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {},
                cardName: 'Onaylarım',
                cardInfo: '2 Notifications',
                cardIcon: 'assets/images/home_assets/ic_onayladiklarim1.png',
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {},
                cardName: 'İşlerim',
                cardInfo: '9 Notifications',
                cardIcon: 'assets/images/home_assets/ic_islerim1.png',
                cardHeight: 20.h,
                cardWidth: 38.w,
                isBordro: false,
              ),
              HomeMenuCard(
                cardPressed: () {},
                lastBordroPressed: () {},
                cardName: 'Bordrolarım',
                cardInfo: '19 Bordro',
                cardIcon: 'assets/images/home_assets/ic_bordrolarim.png',
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
                  color: Colors.white,
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
                                          image: AssetImage(
                                              'assets/images/home_assets/ic_izinlerim.png'))),
                                ),
                                Text(
                                  'İzinlerim',
                                  style: GoogleFonts.inter(
                                    color:
                                        const Color.fromARGB(255, 72, 74, 77),
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
                                          'assets/images/home_assets/ic_izinlerim_ekle.png'),
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
                                    'İzin\nBakiyesi',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xff8F989D),
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
                                      color:
                                          const Color.fromARGB(255, 72, 74, 77),
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
                                    'İzin Başlangıç Tarihi',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xff8F989D),
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
                                      color:
                                          const Color.fromARGB(255, 72, 74, 77),
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
                                    'İzin Gün Sayısı',
                                    style: GoogleFonts.inter(
                                      color: const Color(0xff8F989D),
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
                                      color:
                                          const Color.fromARGB(255, 72, 74, 77),
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
