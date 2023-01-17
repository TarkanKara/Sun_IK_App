// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_controller.dart';
import 'package:sun_ik_app/utils/pdf_share.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends GetView<PdfController> {
  const PdfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color(0xffEF3E52),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                SharePDF.pdfShare(
                    controller.myPayrollController.myPayrollModel.data![0]
                        .documentperiod
                        .toString(),
                    controller
                        .myPayrollController.myPayrollPdfModel.data!.codeUnits,
                    controller.myPayrollController.myPayrollModel.data![0]
                        .documentperiod
                        .toString(),
                    controller.myPayrollController.myPayrollModel.data![0]
                        .documentperiod);
                /* ------------------------------------------------------------------------
                 final temp = await getTemporaryDirectory();
                final path =
                    "${temp.path}/${controller.myPayrollController.myPayrollModel.data![0].documentperiod} bordro.pdf";
                final file = File(path);
                file.writeAsBytesSync(controller
                    .myPayrollController.myPayrollPdfModel.data!.codeUnits);
                final xFile = XFile(path);
                await Share.shareXFiles([xFile],
                    text:
                        "${controller.myPayrollController.myPayrollModel.data![0].documentperiod} bordro",
                    subject:
                        "${controller.myPayrollController.myPayrollModel.data![0].documentperiod} ayına ait bodronuz gönderilmitir."); 
                  -----------------------------------------------------------------------------------*/
              },
              icon: Icon(
                Icons.ios_share_outlined,
                size: 8.w,
              ))
        ],
        title: Text(controller
            .myPayrollController
            .myPayrollModel
            .data![controller.myPayrollController.indexfinal.value]
            .documentperiod
            .toString()),
      ),
      body: SizedBox(
          child: Obx(
        () => controller.myPayrollController.status.value.isSuccess
            ? SfPdfViewer.memory(
                controller.myPayrollController.resultPdf!,
                initialZoomLevel: 2.5,
              )
            : const Center(child: CircularProgressIndicator()),
      )),
    );
  }
}
