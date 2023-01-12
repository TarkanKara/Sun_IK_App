class PictureModel {
  String? refreshToken;
  String? token;
  Data? data;

  PictureModel({this.refreshToken, this.token, this.data});

  PictureModel.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['RefreshToken'] = this.refreshToken;
    data['Token'] = this.token;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? profilePicture;
  String? lastUpdateDate;

  Data({this.profilePicture, this.lastUpdateDate});

  Data.fromJson(Map<String, dynamic> json) {
    profilePicture = json['ProfilePicture'];
    lastUpdateDate = json['LastUpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProfilePicture'] = this.profilePicture;
    data['LastUpdateDate'] = this.lastUpdateDate;
    return data;
  }
}
