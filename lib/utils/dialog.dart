import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog {
  static getDialog(String title, content, textButon) {
    return Get.defaultDialog(
      title: title,
      content: Text(content),
      cancel: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text(textButon),
      ),
    );
  }
}
