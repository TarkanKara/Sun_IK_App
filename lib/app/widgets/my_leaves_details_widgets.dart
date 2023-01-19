import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/my_leaves_detail/my_leaves_detail_controller.dart';

class LeaveTypeDropDownMenu extends GetView<MyLeavesDetailController> {
  const LeaveTypeDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 6.5.h,
        width: 100.w,
        margin: EdgeInsets.symmetric(
          vertical: 1.7.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(color: const Color(0xffeeeeee), width: .6.w),
        ),
        child: DropdownButton<String>(
          isExpanded: true,
          value: controller.leaveTypeDropdownValue.value,
          underline: const SizedBox(),
          style: const TextStyle(color: Colors.black),
          onChanged: (String? value) {
            controller.leaveTypeDropdownValue.value = value!;
          },
          items:
              controller.company.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: EdgeInsets.only(left: 3.w, bottom: .4.h),
                child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 2.h,
                      color: const Color(0xff616161)),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TextFormFieldLeavesWidget extends StatelessWidget {
  const TextFormFieldLeavesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 30,
      minLines: 1,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xffFFFFFF),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(2.w)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide: const BorderSide(width: 0, color: Colors.transparent),
          )),
    );
  }
}
