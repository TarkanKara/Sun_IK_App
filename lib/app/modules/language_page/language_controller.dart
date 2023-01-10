import 'package:get/get.dart';

class LanguageController extends GetxController {
  RxBool checkBox = false.obs;
  RxBool checkBoxState = false.obs;

  RxList languages = [
    {
      "name": "English",
      "subTitle": "English",
      "flag": "assets/images/language/english_flag.png",
      "isCheck": false
    },
    {
      "name": "Turkish",
      "subTitle": "Türkçe",
      "flag": "assets/images/language/turkish_flag.jpg",
      "isCheck": false
    },
    {
      "name": "French",
      "subTitle": "Français",
      "flag": "assets/images/language/french_flag1.png",
      "isCheck": false
    },
    {
      "name": "German",
      "subTitle": "Deutsch",
      "flag": "assets/images/language/german_flag.png",
      "isCheck": false
    },
    {
      "name": "Portuguese",
      "subTitle": "Português",
      "flag": "assets/images/language/portugal_flag.png",
      "isCheck": false
    }
  ].obs;

  checkBoxControl(index) {
    checkBox.value = !checkBox.value;
  }
}
