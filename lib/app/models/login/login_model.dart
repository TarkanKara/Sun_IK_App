class LoginModel {
  String? token;
  String? refreshToken;
  bool? isManager;
  int? userID;

  LoginModel({this.token, this.refreshToken, this.isManager, this.userID});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    refreshToken = json['RefreshToken'];
    isManager = json['IsManager'];
    userID = json['UserID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Token'] = token;
    data['RefreshToken'] = refreshToken;
    data['IsManager'] = isManager;
    data['UserID'] = userID;
    return data;
  }
}
