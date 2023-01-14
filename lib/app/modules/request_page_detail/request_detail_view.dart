import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/request_page_detail/request_detail_controller.dart';

class RequestDetailView extends GetView<RequestDetailController> {
  const RequestDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.status.value.isSuccess
          ? Center(
              child: Text(controller
                  .requestDetail.data!.requestDetailKeyValue![3]!.value
                  .toString()),
            )
          : const Center(child: CircularProgressIndicator())),
    );
  }
}
