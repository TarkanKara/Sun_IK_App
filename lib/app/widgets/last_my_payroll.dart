import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../modules/my_payrolls_page/my_payrolls_controller.dart';

class LastMyPayroll extends GetView<MyPayrollsController> {
  const LastMyPayroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.w)),
      child: Container(
        height: 15.h,
        width: 75.w,
        decoration: BoxDecoration(
            color: const Color(0xffFEFEFE),
            borderRadius: BorderRadius.all(Radius.circular(5.w))),
        child: Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 3.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 5.h,
                    width: 40.w,
                    child: Text(
                      "LAST PAYROLES DOWLAND",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 2.h, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 22.w,
                    child: Text(
                      "TARKAN\n KARA",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 2.h, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LAST PAYROLL DOWLAND",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 2.h, fontWeight: FontWeight.bold),
                  ),
                  /*  Obx(
                    () => InkWell(
                      onTap: () {},
                      child: Text(
                        DateFormat("dd/MM/yyyy")
                            .format(controller.selectedDate.value)
                            .toString(),
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 2.h, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ), */
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.download,
                      size: 2.8.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
