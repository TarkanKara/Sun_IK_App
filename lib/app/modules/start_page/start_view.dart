import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/start_page/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircularProgressIndicator(
          color: Colors.red,
        ),
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              controller.login();
            },
            child: Container(
              child: const Text("data"),
            )),
      ),
    );
  }
}
