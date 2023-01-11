// ignore_for_file: unnecessary_this, prefer_collection_literals

class MyPayrollPdfModel {
  String? refreshToken;
  String? token;
  String? data;

  MyPayrollPdfModel({this.refreshToken, this.token, this.data});

  MyPayrollPdfModel.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'];
  }
}
