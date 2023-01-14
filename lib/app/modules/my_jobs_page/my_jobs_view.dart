import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/utils/date_convert.dart';

import 'my_jobs_controller.dart';

class MyJobsView extends GetView<MyJobsController> {
  const MyJobsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => controller.status.value.isSuccess
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tarih : ${DateTimeConverTo.compareToDateTime(controller.myJobs.data!.pendingJobsList![0].wORKCREATIONDATE.toString())}",
                  ),
                  Text(
                    "İş No: ${controller.myJobs.data!.pendingJobsList![0].iDWORK}",
                  ),
                  Text(
                    "Talep Edilen : ${controller.myJobs.data!.pendingJobsList![0].wORKTYPENAME != null ? "${controller.myJobs.data!.pendingJobsList![0].wORKTYPENAME}" : " "}",
                  ),
                  Text(
                      "Durumu : ${controller.myJobs.data!.pendingJobsList![0].wORKSTATUSNAME}"),
                ],
              )
            : const Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
