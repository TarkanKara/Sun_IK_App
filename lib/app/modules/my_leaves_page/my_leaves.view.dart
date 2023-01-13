// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_leaves_page/my_leaves_controller.dart';

class MyLeavesView extends GetView<MyLeavesController> {
  const MyLeavesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
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
                indicatorColor: Color(0xffEC4B58),
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
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TabBarView(
                  children: [
                    //TabBarView Page 1
                    Column(
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w)),
                          color: const Color(0xffFDFDFD),
                          child: ListTile(
                            title: Text(
                              " titleText",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 2.2.h,
                                      fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              " titleText",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      fontSize: 1.9.h,
                                      fontWeight: FontWeight.bold),
                            ),
                            /* trailing: Container(
                              height: 3.w,
                              width: 5.w,
                              decoration: Box,
                            ), */
                          ),
                        )
                      ],
                    ),
                    //TabBarView Page 2
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.w)),
                            child: Container(
                              width: 90.w,
                              height: 15.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.w),
                              ),
                              child: Center(
                                  child: Text(
                                "BURAK ŞEKER \nSenior Flutter Dev",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        fontSize: 5.w,
                                        fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: HeatMapCalendar(
                            defaultColor: Colors.white,
                            monthFontSize: 4.w,
                            weekFontSize: 3.5.w,
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
