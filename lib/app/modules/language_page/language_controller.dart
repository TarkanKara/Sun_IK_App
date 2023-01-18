// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_print

import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../models/language/my_app_language_model.dart';
//tr,eng,port,deut,fran,çin,japon,roman,hintli

class LanguageController extends GetxController {
  final ApiRepository apiRepository;
  LanguageController({required this.apiRepository});
  //Model
  MyAppLanguage myAppLanguage = MyAppLanguage();

  //
  RxBool checkBox = false.obs;
  RxBool checkBoxState = false.obs;
  Rx<RxStatus> status = RxStatus.empty().obs;

  RxList languages = [
    {
      "name":"Türkçe", 
      "subTitle": "Türkçe",
      "flag": "assets/images/language/turkish_flag.jpg",
      //"isCheck": false
    },
    {
      "name": "İngilizce",
      "subTitle": "English",
      "flag": "assets/images/language/english_flag.png",
      // "isCheck": false
    },
    {
      "name": "Portekizce",
      "subTitle": "Português",
      "flag": "assets/images/language/portugal_flag.png",
      //"isCheck": false
    },
    {
      "name": "Almanca",
      "subTitle": "Deutsch",
      "flag": "assets/images/language/german_flag.png",
      //"isCheck": false
    },
    {
      "name": "Fransızca",
      "subTitle": "Français",
      "flag": "assets/images/language/french_flag1.png",
      // "isCheck": false
    },
    {
      "name": "Çince",
      "subTitle": "中国人",
      "flag": "assets/images/language/chinese_flag.png",
      // "isCheck": false
    },
    {
      "name": "Japonca",
      "subTitle": "日本",
      "flag": "assets/images/language/japanese_flag.png",
      // "isCheck": false
    },
    {
      "name": "Hintçe",
      "subTitle": "हिंदी",
      "flag": "assets/images/language/indian_flag.png",
      // "isCheck": false
    },
    
  ].obs;

  /* checkBoxControl(index) {
    checkBox.value = !checkBox.value;
  } */

  returnButton() {
    Get.back();
  }

  @override
  void onInit() {
    getMyAppLanguage();
    print('Login View başlatıldı');
    super.onInit();
  }

  //getMyAppLanguage
  getMyAppLanguage() async {
    status.value = RxStatus.loading();
    myAppLanguage = (await apiRepository.getAllLanguage())!;
    status.value = RxStatus.success();
  }
}