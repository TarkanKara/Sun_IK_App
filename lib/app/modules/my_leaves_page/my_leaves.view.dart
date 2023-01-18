// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_leaves_page/my_leaves_controller.dart';

import '../../routes/app_pages.dart';
import '../../widgets/my_leaves_card_widget.dart';
import '../../widgets/my_leaves_title.dart';

class MyLeavesView extends GetView<MyLeavesController> {
  const MyLeavesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.MY_LEAVES_DETAIL);
            },
            icon: const Icon(Icons.add_sharp),
          ),
        ],
        title: const Text("MY LEAVES"),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: const TabBar(
                indicatorColor: Colors.green,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                indicatorWeight: 3,
                tabs: [
                  Tab(text: "İzinlerim"),
                  Tab(text: "İzin Takvimi"),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: TabBarView(
                  children: [
                    //TabBarView Page 1
                    Column(
                      children: [
                        ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return MyLeavesListTile(
                              imagePath: "assets/images/okey.png",
                              titleText: "titleText",
                              subTitleText: "SubtitleText",
                              dataText: "data",
                            );
                          },
                        ),
                      ],
                    ),
                    //TabBarView Page 2
                    Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffEC4B58),
                                      Color(0xffEF3E52),
                                      Color(0xffEE5A5D)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w)),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: HeatMapCalendar(
                                defaultColor: Colors.white,
                                monthFontSize: 5.w,
                                weekFontSize: 3.8.w,
                                flexible: true,
                                weekTextColor: Colors.red,
                                colorMode: ColorMode.color,
                                showColorTip: true,
                                margin: EdgeInsets.all(1.3.w),
                                datasets: {
                                  DateTime(2023, 1, 6): 3,
                                  DateTime(2023, 1, 7): 7,
                                  DateTime(2023, 1, 8): 10,
                                  DateTime(2023, 1, 9): 13,
                                  DateTime(2023, 1, 13): 6,
                                },
                                colorsets: const {
                                  1: Colors.red,
                                  3: Colors.orange,
                                  5: Colors.yellow,
                                  7: Colors.green,
                                  9: Colors.blue,
                                  11: Colors.indigo,
                                  13: Colors.purple,
                                },
                                onClick: (value) {
                                  //Get.snackbar("Tarih", value.toString());
                                },
                                onMonthChange: (p0) {
                                  //Get.snackbar("Tarih", p0.toString());
                                },
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 5.h,
                          left: 8.w,
                          right: 8.w,
                          child: GestureDetector(
                            onTap: () {},
                            child: MyLeavesCard(
                              myleavesText1: "Yıllık izin Bakiyesi:",
                              myleavesInformationText1: "5",
                              myleavesText2: "İlgili Yıl İzin Hakediş Tarihi:",
                              myleavesInformationText2: "16.01.2023",
                              myleavesText3:
                                  "İlgili Yıl İzin Hakediş Gün Sayısı :",
                              myleavesInformationText3: "14",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 1.h,
                          left: 40.w,
                          right: 40.w,
                          child: CircleAvatar(
                            radius: 10.w,
                            backgroundColor: const Color(0xffEBEBEB),
                            child: CircleAvatar(
                              radius: 8.5.w,
                              backgroundColor: Colors.white,
                              backgroundImage: const AssetImage(
                                  "assets/images/home_assets/ic_avatar_profile.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
