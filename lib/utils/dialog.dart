import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog {
  static getDialog(String title, content, textButon, {Widget? widget}) {
    return Get.defaultDialog(
      title: title,
      content: Text(content),
      confirm: widget,
      cancel: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Text(textButon),
      ),
    );
  }
}
