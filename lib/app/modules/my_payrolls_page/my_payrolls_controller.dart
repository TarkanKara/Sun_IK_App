// ignore_for_file: avoid_print, unused_element, unused_local_variable, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPayrollsController extends GetxController {
  var selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    print("MyPayrolls View");
    super.onInit();
  }

  //MyPayrolles || showDatePickerr
  void showDatePickerr() async {
    DateTime? pickedData = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(1997),
      lastDate: DateTime(2050),
      helpText: "My Payroll Date",
      //initialEntryMode: DatePickerEntryMode.input,
      errorFormatText: " Tarih Hatalı",
      errorInvalidText: "Tarih aralığı Hatalı",
      selectableDayPredicate: disableDate,
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
                colorScheme:
                    const ColorScheme.light(primary: Color(0xffEC4B58))),
            child: child!);
      },
    );
    if (pickedData != null && pickedData != selectedDate.value) {
      selectedDate.value = pickedData;
    }
  }

  //MyPayrolles || showDatePickerr
  bool disableDate(DateTime day) {
    if (day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 5)))) {
      return true;
    }
    return true;
    //return false;
  }
}
