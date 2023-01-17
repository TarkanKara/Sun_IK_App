// ignore_for_file: avoid_print, unused_element, unused_local_variable, unused_field

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../utils/base64_convert_picture.dart';
import '../../models/my_payroll/my_payroll_model.dart';
import '../../models/my_payroll/my_payroll_pdf_model.dart';

class MyPayrollsController extends GetxController {
  final ApiRepository apiRepository;
  MyPayrollsController({required this.apiRepository});

  //Model
  MyPayrollModel myPayrollModel = MyPayrollModel();
  MyPayrollPdfModel myPayrollPdfModel = MyPayrollPdfModel();

  //Değişkenler
  Rx<RxStatus> status = RxStatus.empty().obs;
  Uint8List? resultPdf;
  RxInt indexfinal = 0.obs;
  String userName = "";
  Uint8List? photoPath;

  //DateTime
  var selectedDate = DateTime.now().obs;

  @override
  void onInit() {
    //userNameMap = Get.arguments;
    photoPath = Base64.pictureBase64Decode(Get.arguments['picture']);
    print(photoPath);
    userName = Get.arguments['name'];
    print("arguments ${Get.arguments.toString()}");
    getMyPayrolls();
    //await getMyPayrollPdf(2);
    print("MyPayrolls View");
    super.onInit();
  }

  //get MyPayroll
  getMyPayrolls() async {
    status.value = RxStatus.loading();
    myPayrollModel = (await apiRepository.getMyPayroll())!;
    status.value = RxStatus.success();
  }

  //getMyPayrollPdf
  getMyPayrollPdf(int index) async {
    status.value = RxStatus.loading();
    myPayrollPdfModel = (await apiRepository.getMyPayrolPdf(
      myPayrollModel.data![index].documentyear,
      myPayrollModel.data![index].documentmonth,
      myPayrollModel.data![index].uid,
    ))!;
    resultPdf = base64.decode(myPayrollPdfModel.data.toString());
    status.value = RxStatus.success();
  }

/* ---------------------------showDatePicker START---------------------------------------------*/
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

  /* ---------------------------showDatePicker END---------------------------------------------*/
}
