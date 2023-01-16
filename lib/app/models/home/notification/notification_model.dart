// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel? notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel? data) => json.encode(data!.toJson());

class NotificationModel {
    NotificationModel({
        this.refreshToken,
        this.token,
        this.data,
    });

    String? refreshToken;
    String? token;
    List<Datum?>? data;

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        refreshToken: json["RefreshToken"],
        token: json["Token"],
        data: json["Data"] == null ? [] : List<Datum?>.from(json["Data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "RefreshToken": refreshToken,
        "Token": token,
        "Data": data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
    };
}

class Datum {
    Datum({
        this.idPushNotificationDetail,
        this.notificationDate,
        this.messageTitle,
        this.messageBody,
        this.isRead,
        this.pushCount,
        this.idMaster,
        this.reqtype,
        this.reqDirection,
        this.idWork,
        this.idWorkStatus,
        this.imageUrl,
        this.fileOriginalName,
        this.documentUid,
    });

    int? idPushNotificationDetail;
    DateTime? notificationDate;
    String? messageTitle;
    String? messageBody;
    bool? isRead;
    int? pushCount;
    int? idMaster;
    int? reqtype;
    int? reqDirection;
    int? idWork;
    int? idWorkStatus;
    dynamic imageUrl;
    dynamic fileOriginalName;
    dynamic documentUid;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idPushNotificationDetail: json["ID_PUSH_NOTIFICATION_DETAIL"],
        notificationDate: DateTime.parse(json["NOTIFICATION_DATE"]),
        messageTitle: json["MESSAGE_TITLE"],
        messageBody: json["MESSAGE_BODY"],
        isRead: json["IS_READ"],
        pushCount: json["PUSH_COUNT"],
        idMaster: json["ID_MASTER"],
        reqtype: json["REQTYPE"],
        reqDirection: json["REQ_DIRECTION"],
        idWork: json["ID_WORK"],
        idWorkStatus: json["ID_WORK_STATUS"],
        imageUrl: json["IMAGE_URL"],
        fileOriginalName: json["FILE_ORIGINAL_NAME"],
        documentUid: json["DOCUMENT_UID"],
    );

    Map<String, dynamic> toJson() => {
        "ID_PUSH_NOTIFICATION_DETAIL": idPushNotificationDetail,
        "NOTIFICATION_DATE": notificationDate?.toIso8601String(),
        "MESSAGE_TITLE": messageTitle,
        "MESSAGE_BODY": messageBody,
        "IS_READ": isRead,
        "PUSH_COUNT": pushCount,
        "ID_MASTER": idMaster,
        "REQTYPE": reqtype,
        "REQ_DIRECTION": reqDirection,
        "ID_WORK": idWork,
        "ID_WORK_STATUS": idWorkStatus,
        "IMAGE_URL": imageUrl,
        "FILE_ORIGINAL_NAME": fileOriginalName,
        "DOCUMENT_UID": documentUid,
    };
}
