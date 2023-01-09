import 'package:get/get.dart';

class LanguageController extends GetxController {
  RxBool checkBox = false.obs;
  List<String> flags = [
    "assets/images/language/english_flag.png",
    "assets/images/language/turkish_flag.jpg",
    "assets/images/language/french_flag1.png",
    "assets/images/language/german_flag.png",
    "assets/images/language/portugal_flag.png",
    
  ];
  List <String> languageTitle = [
    "English",
    "Turkish",
    "French",
    "German",
    "Portuguese"
    
  ];
  List <String> languageSubtitle = [
    "English",
    "Türkçe",
    "Français",
    "Deutsch",
    "Português",
  ];

  void checkBoxControl(){
    checkBox != true.obs;
  }
}
