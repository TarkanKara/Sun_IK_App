// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:typed_data';

class Base64 {
  static pictureBase64Decode(String path) {
    Uint8List decode = base64Decode(path);
    return decode;
  }
}
