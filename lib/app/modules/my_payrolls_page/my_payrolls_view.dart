import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'my_payrolls_controller.dart';

class MyPayrollsView extends GetView<MyPayrollsController> {
  const MyPayrollsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {},
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
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w)),
                                color: const Color(0xffFDFDFD),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: const Color(0xffFDFDFD),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            "assets/images/pdf.png")),
                                  ),
                                  title: Text(
                                    "25 April 1997",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            fontSize: 1.8.h,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    "My Payroll",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(fontSize: 1.8.h),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.download)),
                                ),
                              ),
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
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.w)),
              child: Container(
                height: 15.h,
                width: 75.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFEFEFE),
                    borderRadius: BorderRadius.all(Radius.circular(5.w))),
                child: Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10.h,
                        width: 25.w,
                        child: Text(
                          "Tarkan",
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(fontSize: 2.h),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                        width: 25.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "25",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 5.h),
                            ),
                            Text(
                              "April",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 2.h),
                            ),
                            Text(
                              "1997",
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(fontSize: 2.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
