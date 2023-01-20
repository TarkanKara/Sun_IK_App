// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class MyLeavesDetailController extends GetxController {
  ApiRepository apiRepository;
  MyLeavesDetailController({required this.apiRepository});

  var selectedDate = DateTime.now().obs;
  var selectedDate2 = DateTime.now().obs;
  var selectedDate3 = DateTime.now().obs;
  RxInt selectedDate4 = 0.obs;

  Rx<RxStatus> status = RxStatus.empty().obs;

  waiting() async {
    status.value = RxStatus.loading();
    await Future.delayed(const Duration(milliseconds: 500));
    status.value = RxStatus.success();
  }

  vacationEnd() {
    return selectedDate3 = selectedDate2.value.add(const Duration(days: 1)).obs;
  }

  vacationDays() {
    return selectedDate4.value =
        selectedDate3.value.difference(selectedDate.value).inDays;
  }

  //
  @override
  void onReady() {
    print("MyLeaves Detail Yüklendi");
    waiting();
    super.onReady();
  }
  /* @override
  void OnReady() {
    print("MyLeaves Detail Yüklendi");
    waiting();
    super.onInit();
  } */

  RxString leaveTypeDropdownValue = "Yıllık İzin".obs;
  dropDownValues(String value) {
    leaveTypeDropdownValue.value = value;
  }

  RxList<String> company = [
    "Yıllık İzin",
    "İdari İzin",
    "Ücretsiz İzin",
    "Nikah + Düğün",
    "Eşin Doğum Yapması",
    "Çocuğun Evlenmesi Halinde",
    "Çocuğun Sünneti",
    "Yangın,Sel,Deprem Vb Doğal Afet Halinde",
    "Çalışanın Eşi Veya Çocuğunun Ölümü Halinde",
    "Anne Baba Kardeş Ölümü Halinde",
    "Torun Büyükanne Büyükbaba Ölümü Halinde",
    "Eşin Anne Ve Babasının Ölümü Halinde",
  ].obs;

  showDatePickerr1() async {
    DateTime? pickedData = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(1997),
      lastDate: DateTime(2050),
      helpText: "My Payroll Date",
      initialEntryMode: DatePickerEntryMode.input,
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

  showDatePickerr2() async {
    DateTime? pickedData = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(1997),
      lastDate: DateTime(2050),
      helpText: "My Payroll Date",
      initialEntryMode: DatePickerEntryMode.input,
      errorFormatText: " Tarih Hatalı",
      errorInvalidText: "Tarih aralığı Hatalı",
      selectableDayPredicate: disableDate2,
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
                colorScheme:
                    const ColorScheme.light(primary: Color(0xffEC4B58))),
            child: child!);
      },
    );
    if (pickedData != null && pickedData != selectedDate2.value) {
      selectedDate2.value = pickedData;
    }
  }

  //MyPayrolles || showDatePickerr
  bool disableDate2(DateTime day) {
    if (day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 5)))) {
      return true;
    }
    return true;
    //return false;
  }
}
