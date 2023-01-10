// ignore_for_file: avoid_print, unused_element, unused_local_variable, unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/models/my_payroll_model.dart';
import 'package:sun_ik_app/app/models/my_payroll_pdf_model.dart';
import 'package:sun_ik_app/shared/services/my_payroll_service.dart';

class MyPayrollsController extends GetxController {
  MyPayrollService myPayrolService = MyPayrollService();
  MyPayrollModel myPayrollModel = MyPayrollModel();
  MyPayrollPdfModel myPayrollPdfModel = MyPayrollPdfModel();
  RxBool isLoading = false.obs;
  Uint8List? resultPdf;

  var selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    getMyPayrolls();
    //await getMyPayrollPdf(2);
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

  //get MyPayroll
  getMyPayrolls() async {
    try {
      isLoading.value = false;
      myPayrollModel = (await myPayrolService.getMyPayroll())!;
      print("$myPayrollModel");
      isLoading.value = true;
    } catch (e) {
      print("$e");
    }
  }

  //getMyPayrolPdf
  getMyPayrollPdf(int index) async {
    try {
      isLoading.value = false;
      myPayrollPdfModel = (await myPayrolService.getMyPayrolPdf(
        myPayrollModel.data![index].documentyear,
        myPayrollModel.data![index].documentmonth,
        myPayrollModel.data![index].uid,
      ))!;

      resultPdf = base64.decode(myPayrollPdfModel.data.toString());
      isLoading.value = true;
    } catch (e) {
      print("$e");
    }
  }
}
