// ignore_for_file: avoid_print, unused_local_variable, non_constant_identifier_names, unnecessary_brace_in_string_interps


import 'package:sun_ik_app/app/models/home/get_landing_page_info.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_delete_model.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_model.dart';
import 'package:sun_ik_app/app/models/login/login_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_pdf_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_detail_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_model.dart';

import '../app/models/home/my_profile_model.dart';

import '../app/models/home/notification/notification_bulk_delete.dart';
import '../app/models/home/notification/notification_read_model.dart';
import '../app/models/language/my_app_language_model.dart';

import 'api_provider.dart';

class ApiRepository {
  final ApiProvider apiProvider;

  ApiRepository({
    required this.apiProvider,
  });

  //getMyPayroll
  Future<MyPayrollModel?> getMyPayroll() async {
    try {
      var response = await apiProvider.postMethod(
        "EmployeeDocuments/GetPayrollPeriods",
        {"Date": "2023-01-12T17:52:48.140Z"},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyPayrollModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getMyPayrolPdf
  Future<MyPayrollPdfModel?> getMyPayrolPdf(
      int? year, month, String? documentId) async {
    try {
      var response = await apiProvider.postMethod(
        "EmployeeDocuments/EmployeePayrollDownload",
        {
          "YEAR": year,
          "MONTH": month,
          "DOCUMENTUID": documentId,
        },
      );

      if (response.statusCode == 200) {
        print(response.body);
        return MyPayrollPdfModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getHomaLandingInfo
  Future<GetLandingPageInfoModel?> getHomaLandingInfo(
      bool? isFirstLogin) async {
    try {
      var response = await apiProvider.getMethod(
        "EmployeeReport/GetLandingPageInfo?isFirstLogin=$isFirstLogin",
      );

      if (response.statusCode == 200) {
        print(response.body);

        return GetLandingPageInfoModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getMyProfile
  Future<MyProfileModel?> getMyProfile() async {
    try {
      var response = await apiProvider.getMethod(
        "EmployeeReport/GetProfilPicture",
      );
      if (response.statusCode == 200) {
        print(response.body);
        return MyProfileModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getLogin
  Future<LoginModel?> getLogin(String email, password) async {
    try {
      var response = await apiProvider.postMethod("Account/Token", {
        "SelectedIdLanguage": 0,
        "Email": email,
        "Password": password,
        "FirmId": 5,
        "PinCode": "string",
        "DeviceID": "string",
        "DomainFirmId": 0,
      });
      if (response.statusCode == 200) {
        print(response.body);
        return LoginModel.fromJson(response.body);
      }
    } catch (e) {
      print("e");
    }
    return null;
  }

  //getAllLanguage
  Future<MyAppLanguage?> getAllLanguage() async {
    try {
      var response = await apiProvider.getMethod("Language/GetAllLanguage");

      if (response.statusCode == 200) {
        print(response.body);
        return MyAppLanguage.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getMyRequest
  Future<MyRequestModel?> getMyRequest() async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetMyRequestMasterMobile",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyRequestModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }


  //getMyRequestDetail
  Future<MyRequestDetailModel?> getMyRequestDetail(
      int idMater, detailType) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetRequestById?IdMaster=$idMater&DetailType=$detailType",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyRequestDetailModel.fromJson(response.body);
          }
    } catch (e) {
      print("$e");
    }
    return null;
  }

//getPushNotification
  Future<NotificationModel?> getPushNotification() async {
    try {
      var response = await apiProvider.postMethod(
        "PushNotification/GetPushMessages",
        {},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return NotificationModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getReadNotification
  Future<ReadNotificationModel?> getReadNotification(
      String push_notification_detail) async {
    try {
      var response = await apiProvider.postMethod(
        "PushNotification/ReadPushMessage?ID_PUSH_NOTIFICATION_DETAIL=${push_notification_detail}",
        {},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return ReadNotificationModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getDeleteNotification
  Future<DeleteNotificationModel?> getDeleteNotification(
      String push_notification_detail) async {
    try {
      var response = await apiProvider.postMethod(
        "/PushNotification/DeletePushMessage?ID_PUSH_NOTIFICATION_DETAIL=${push_notification_detail}",
        {},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return DeleteNotificationModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getBulkDeleteNotification
  // 1 ----> Tüm okunanları sil
  // 2 ----> Hepsini sil
  Future<BulkDeleteNotificationModel?> getBulkDeleteNotification(
      int allOrReaded) async {
    try {
      var response = await apiProvider.postMethod(
        "/PushNotification/DeletePushMessage?ID_PUSH_NOTIFICATION_DETAIL=${allOrReaded}",
        {},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return BulkDeleteNotificationModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //userLogOut
  userLogOut() async {
    try {
      var response = await apiProvider.postMethod(
        "Application/LogOut",
        {},
      );
      if (response.statusCode == 200) {
        print("Kullanıcı Çıkış Yapıldı : ${response.body}");
      }
    } catch (e) {
      print("$e");
    }
  }

}
