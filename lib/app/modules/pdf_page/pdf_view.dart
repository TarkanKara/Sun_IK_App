import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_controller.dart';
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
        title: Text(controller
            .myPayrollController.myPayrollModel.data![controller.myPayrollController.indexfinal.value].documentperiod
            .toString()),
      ),
      body: SizedBox(
          child: Obx(
        () => controller.myPayrollController.isLoading.value
            ? SfPdfViewer.memory(
                controller.myPayrollController.resultPdf!,
                initialZoomLevel: 2.5,
              )
            : const Center(child: CircularProgressIndicator()),
      )),
    );
  }
}
