// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SharePDF {
 static pdfShare(
      String modelData, List<int> bytes, String sharetText, sharetSubjecText, ) async {
    final temp = await getTemporaryDirectory();
    final path = "${temp.path}/${modelData} bordro.pdf";
    final file = File(path);
    file.writeAsBytesSync(bytes);
    final xFile = XFile(path);
    await Share.shareXFiles([xFile],
        text: "${sharetText} bordro",
        subject: "${sharetSubjecText} ayına ait bodronuz gönderilmitir.");
  }
}
