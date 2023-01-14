import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_jobs_controller.dart';

class MyJobsView extends GetView<MyJobsController> {
  const MyJobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => controller.status.value.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Hello World"),
                ],
              )
            : const Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
