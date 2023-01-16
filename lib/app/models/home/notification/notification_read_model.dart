// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class ReadNotificationModel {
  String? refreshToken;
  String? token;
  bool? data;

  ReadNotificationModel({this.refreshToken, this.token, this.data});

  ReadNotificationModel.fromJson(Map<String, dynamic> json) {
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
