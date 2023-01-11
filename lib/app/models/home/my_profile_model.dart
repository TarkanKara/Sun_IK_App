class MyProfileModel {
  String? refreshToken;
  String? token;
  Data? data;

  MyProfileModel({this.refreshToken, this.token, this.data});

  MyProfileModel.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RefreshToken'] = refreshToken;
    data['Token'] = token;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ProfilePicture'] = profilePicture;
    data['LastUpdateDate'] = lastUpdateDate;
    return data;
  }
}
