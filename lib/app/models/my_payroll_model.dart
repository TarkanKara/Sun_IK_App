class MyPayrollModel {
  String? refreshToken;
  String? token;
  List<DataModel>? data;

  MyPayrollModel({
    this.refreshToken,
    this.token,
    this.data,
  });

  MyPayrollModel.fromJson(Map<String, dynamic> json) {
    refreshToken = json["RefreshToken"];
    token = json["Token"];
    if (json["Data"] != null) {
      data = <DataModel>[];
      json["Data"].forEach((v) {
        data!.add(DataModel.fromJson(v));
      });
    }
  }
}

class DataModel {
  int? documentyear;
  int? documentmonth;
  String? documentperiod;
  String? uid;

  DataModel({
    required this.documentyear,
    required this.documentmonth,
    required this.documentperiod,
    required this.uid,
  });

  DataModel.fromJson(Map<String, dynamic> json) {
    documentyear = json["DOCUMENT_YEAR"];
    documentmonth = json["DOCUMENT_MONTH"];
    documentperiod = json["DOCUMENT_PERIOD"];
    uid = json["UID"];
  }
}
