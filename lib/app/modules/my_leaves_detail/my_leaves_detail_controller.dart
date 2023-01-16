// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:sun_ik_app/api/api_repository.dart';

class MyLeavesDetailController extends GetxController {
  ApiRepository apiRepository;
  MyLeavesDetailController({required this.apiRepository});

  //
  @override
  void onInit() {
    print("MyLeaves Detail Yüklendi");
    super.onInit();
  }

 RxString leaveTypeDropdownValue =  "Yıllık İzin".obs;
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

}
