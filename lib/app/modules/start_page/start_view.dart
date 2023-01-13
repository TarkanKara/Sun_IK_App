import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/start_page/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Obx(() => controller.status.value.isSuccess
              ? Column(
                  children: [
                    Text(
                      "Talep No : ${controller.myRwquestGetPending.data!.pendingRequestList![0].iDMASTER}",
                      style: const TextStyle(fontSize: 50),
                    )
                  ],
                )
              : const Center(child: CircularProgressIndicator())),
        ),
      ),
    );
  }
}
