// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/last_my_payroll.dart';
import '../../widgets/my_payroll_list_card.dart';
import 'my_payrolls_controller.dart';

class MyPayrollsView extends GetView<MyPayrollsController> {
  const MyPayrollsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          IconButton(
            onPressed: () {
              controller.showDatePickerr();
            },
            icon: const Icon(Icons.date_range_outlined),
          ),
        ],
        title: const Text("MY PAYROLL"),
      ),
      body: Stack(
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
              SizedBox(height: 9.h),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 60.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 1.h),
                              child: MyPayrollListCard(),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 12.h,
            left: 8.w,
            right: 8.w,
            child: LastMyPayroll(),
          ),
          Positioned(
            top: 8.h,
            left: 40.w,
            right: 40.w,
            child: CircleAvatar(
              radius: 10.w,
              backgroundColor: const Color(0xffEBEBEB),
              child: CircleAvatar(
                radius: 8.5.w,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
