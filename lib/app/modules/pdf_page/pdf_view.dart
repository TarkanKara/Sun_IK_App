import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sun_ik_app/app/modules/pdf_page/pdf_controller.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends GetView<PdfController> {
  const PdfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: Obx(
        () => controller.myPayrollController.isLoading.value
            ? SfPdfViewer.memory(
                controller.myPayrollController.resultPdf!,
                initialZoomLevel: 2,
              )
            : const CircularProgressIndicator(),
      )),
    );
  }
}
