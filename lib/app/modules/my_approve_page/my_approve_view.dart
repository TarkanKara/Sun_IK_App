import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/my_approve_page/my_approve_controller.dart';

import '../../../utils/date_convert.dart';

class MyApproveView extends GetView<MyApproveController> {
  const MyApproveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => controller.status.value.isSuccess
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateTimeConverTo.compareToDateTime(controller
                        .myRwquestGetPending
                        .data!
                        .pendingRequestList![0]
                        .rEQDATE
                        .toString()),
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Name : ${controller.myRwquestGetPending.data!.pendingRequestList![0].rEQNAME}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Talep No : ${controller.myRwquestGetPending.data!.pendingRequestList![0].iDMASTER}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Talep Edilen : ${controller.myRwquestGetPending.data!.pendingRequestList![0].rEQEMPLOYEE}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Atanan Kişi : ${controller.myRwquestGetPending.data!.pendingRequestList![0].aSSIGNEMPLOYEE}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    //Servis kısmında ui de açıklama yazılan yere EMPLOYEE_NAME_SURNAME datası geliyor biz burda DESCRIPTION datasını kullandık.
                    " Açıklama : ${controller.myRwquestGetPending.data!.pendingRequestList![1].dESCRIPTION}",
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )
            : const Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
