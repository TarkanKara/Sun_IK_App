// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/utils/date_convert.dart';
import 'package:sun_ik_app/utils/dialog.dart';

import '../../../utils/base64_convert_picture.dart';
import '../../../utils/const.dart';
import '../../routes/app_pages.dart';
import '../../widgets/home_menu_card.dart';
import 'home_controller.dart';

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
      body: Obx(
        () => controller.status.value.isSuccess
            ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            controller.myProfileModel!.data!.profilePicture !=
                                    null
                                ? CircleAvatar(
                                    radius: 8.w,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.5),
                                    backgroundImage: MemoryImage(
                                      Base64.pictureBase64Decode(
                                        controller.myProfileModel!.data!
                                            .profilePicture
                                            .toString(),
                                      ),
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 8.w,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.5),
                                    backgroundImage: AssetImage(
                                        "assets/images/home_assets/ic_avatar_profile.png"),
                                  ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.info)),
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
                                image: AssetImage(Const.SUNLOGO),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        //color: Colors.red,
                        width: 25.w,
                        height: 10.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.NOTIFICATION);
                                },
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
                                            color: Const
                                                .NOTIFICATIONCONTAINERCOLOR,
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Text(
                                          controller.infoModel!.data!
                                              .UnReadedNotificationCount
                                              .toString(),
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
                                  onPressed: () async {
                                    CustomDialog.getDialog(
                                        'Uyarı',
                                        'Çıkış yapmak istediğinize emin misiniz?',
                                        'Kapat',
                                        widget: ElevatedButton(
                                            onPressed: () {
                                              Get.offAllNamed(Routes.SPLASH);
                                            },
                                            child: Text('Çıkış Yap')));
                                  },
                                  icon: Image.asset(
                                    Const.CIKISYAPICON,
                                    scale: .3.h,
                                    color: Const.CIKISYAPICONCOLOR,
                                  )),
                            ]),
                      ),
                    ),
                    /* ---------------Yönetici True------------------ */

                    controller.infoModel!.data!.IsManager != false
                        ? Positioned(
                            right: 10.h,
                            child: Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                    //color: Colors.red,
                                    width: 25.w,
                                    height: 10.h,
                                    child: Image.asset(
                                      "assets/images/home_assets/ic_search.png",
                                      scale: 0.2.h,
                                      color: Colors.red[400],
                                    )),
                              ),
                            ),
                          )
                        : Container()

                    /* -------------,------------------- */
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 41.5.h,
                    child: SizedBox(
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
                            cardPressed: () {
                              Get.toNamed(Routes.REQUEST);
                            },
                            cardName: controller
                                .infoModel!.data!.menuInfo[0].MENUNAME,
                            cardInfo:
                                "${controller.infoModel!.data!.MyRequestCount} Notifications",
                            cardIcon:
                                'assets/images/home_assets/ic_taleplerim.png',
                            cardHeight: 20.h,
                            cardWidth: 38.w,
                            isBordro: false,
                          ),
                          HomeMenuCard(
                            cardPressed: () {
                              Get.toNamed(Routes.MY_APPROVE);
                            },
                            cardName: controller
                                .infoModel!.data!.menuInfo[1].MENUNAME,
                            cardInfo:
                                "${controller.infoModel!.data!.GetMyApprovalCount} Notifications",
                            cardIcon:
                                'assets/images/home_assets/ic_onayladiklarim1.png',
                            cardHeight: 20.h,
                            cardWidth: 38.w,
                            isBordro: false,
                          ),
                          HomeMenuCard(
                            cardPressed: () {
                              Get.toNamed(Routes.MY_jOBS);
                            },
                            cardName: controller
                                .infoModel!.data!.menuInfo[2].MENUNAME,
                            cardInfo:
                                "${controller.infoModel!.data!.GetMyWorks} Notifications",
                            cardIcon:
                                'assets/images/home_assets/ic_islerim1.png',
                            cardHeight: 20.h,
                            cardWidth: 38.w,
                            isBordro: false,
                          ),
                          HomeMenuCard(
                            cardPressed: () {
                              Get.toNamed(Routes.MY_PAYROLLS, arguments: {
                                "name":
                                    "${controller.infoModel!.data!.NameSurname}",
                                "picture": controller
                                    .myProfileModel!.data!.profilePicture
                                    .toString()
                              });
                            },
                            lastBordroPressed: () {},
                            cardName: controller
                                .infoModel!.data!.menuInfo[5].MENUNAME,
                            cardInfo: controller
                                .infoModel!.data!.myLastPayroll.DocumentName,
                            cardIcon:
                                'assets/images/home_assets/ic_bordrolarim.png',
                            cardHeight: 20.h,
                            cardWidth: 38.w,
                            isBordro: true,
                          ),
                        ],
                      ),
                    )),

                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     width: 95.w,
                //     height: 15.h,
                //     decoration: BoxDecoration(
                //         image: DecorationImage(
                //             image: AssetImage(
                //                 "assets/images/home_assets/ic_sun_akademi.jpg"),
                //             fit: BoxFit.fill),
                //         borderRadius: BorderRadius.circular(20),
                //         color: Const.MENUCOLOR,
                //         boxShadow: const [
                //           BoxShadow(
                //               blurRadius: 3,
                //               color: Colors.grey,
                //               spreadRadius: 0,
                //               offset: Offset(0, 1))
                //         ]),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         IconButton(
                //             onPressed: () {},
                //             icon: Icon(
                //               Icons.arrow_forward_ios_outlined,
                //               color: Colors.white,
                //               size: 4.h,
                //             )),
                //         Padding(
                //           padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                //           child: Text(
                //             'Sun Akademi',
                //             style: GoogleFonts.inter(
                //                 fontSize: 30, color: Colors.white),
                //           ),
                //         ),
                //         IconButton(
                //             onPressed: () {},
                //             icon: Icon(
                //               Icons.arrow_back_ios_outlined,
                //               color: Colors.white,
                //               size: 4.h,
                //             ))
                //       ],
                //     ),
                //   ),
                // ),
                controller.isAkademi.value
                    ? Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            controller.sunAkademiUrl();
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 0.6.h),
                            width: 95.w,
                            height: 15.h,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/images/home_assets/logo_sun_akademi.png',
                                      height: 20.w,
                                      width: 20.w,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 3.5.w, right: 3.5.w),
                                  child: Text(
                                    'Sun Akademi',
                                    style: GoogleFonts.inter(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        color: Const.BASLIKTEXTCOLOR),
                                  ),
                                ),
                                Container(
                                    width: 5.h,
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/home_assets/ic_forward.png"))))
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(),

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
                                          margin: EdgeInsets.only(
                                              left: 3.h, right: 3.h),
                                          width: 5.h,
                                          height: 5.h,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      Const.IZINLERIMICON))),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            "${controller.infoModel!.data!.vacationInfo.employeeEarnedRightsList[0].ANNUALLEAVEBALANCE} Gün",
                                            style: GoogleFonts.inter(
                                              color: controller
                                                          .infoModel!
                                                          .data!
                                                          .vacationInfo
                                                          .employeeEarnedRightsList[
                                                              0]
                                                          .ANNUALLEAVEBALANCE >=
                                                      0
                                                  ? Colors.green
                                                  : Colors.red,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            DateTimeConverTo.compareToDateYMD(
                                                controller
                                                    .infoModel!
                                                    .data!
                                                    .vacationInfo
                                                    .employeeEarnedRightsList[0]
                                                    .NEXTLEAVEALLOWANCEDATE
                                                    .toString()),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          "${controller.infoModel!.data!.vacationInfo.employeeEarnedRightsList[0].NEXTLEAVEALLOWANCEDAYS} Gün",
                                          style: GoogleFonts.inter(
                                            color: Const.BASLIKTEXTCOLOR,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ])
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
