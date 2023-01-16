// ignore_for_file: unnecessary_new, unnecessary_this, prefer_collection_literals

class BulkDeleteNotificationModel {
  String? refreshToken;
  String? token;
  bool? data;

  BulkDeleteNotificationModel({this.refreshToken, this.token, this.data});

  BulkDeleteNotificationModel.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RefreshToken'] = this.refreshToken;
    data['Token'] = this.token;
    data['Data'] = this.data;
    return data;
  }
}
