// ignore_for_file: avoid_print, unused_local_variable, non_constant_identifier_names, unnecessary_brace_in_string_interps, body_might_complete_normally_nullable

import 'dart:ffi';
import 'dart:io';

import 'package:pdf/widgets.dart';
import 'package:sun_ik_app/app/models/home/get_landing_page_info.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_delete_model.dart';
import 'package:sun_ik_app/app/models/home/notification/notification_model.dart';
import 'package:sun_ik_app/app/models/login/login_model.dart';
import 'package:sun_ik_app/app/models/my_leaves/my_leaves_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_pdf_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_pending_jobs_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_detail_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_model.dart';
import 'package:sun_ik_app/utils/dialog.dart';
import 'package:sun_ik_app/utils/null_widget.dart';

import '../app/models/home/my_profile_model.dart';
import '../app/models/home/notification/notification_bulk_delete.dart';
import '../app/models/home/notification/notification_read_model.dart';
import '../app/models/language/my_app_language_model.dart';
import '../app/models/my_approve_detail/my_approve_detail.dart';
import '../app/models/my_request/my_approve_get_pending_model.dart';

import '../app/models/my_team/my_team_model.dart';
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
      return CustomDialog.getDialog("Uyarı",
          "Kullanıcı bilgileri yanlış.\n      Tekrar Deneyiniz.", "Kapat");
    }
    return null;
  }

  //getMyLeaves
  Future<MyLeavesModel?> getMyLeaves() async {
    try {
      var response = await apiProvider.postMethod(
        "EmployeeLeave/GetEmployeeLeave",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyLeavesModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
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
      int? idMater, int? detailType) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetRequestById?IdMaster=${idMater!}&DetailType=${detailType!}",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyRequestDetailModel.fromJson(response.body);
      }
    } on SocketException catch (e) {
      return NullWidget.isNull();
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
      int? push_notification_detail) async {
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
      int idPushNotificationDetail) async {
    try {
      var response = await apiProvider.postMethod(
        "PushNotification/DeletePushMessage?ID_PUSH_NOTIFICATION_DETAIL=${idPushNotificationDetail}",
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
        "PushNotification/BulkDeletePushMessage?AllOrReaded=${allOrReaded}",
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

  //getMyPendingJobs
  Future<MyPendingJobs?> getMyPendingJobs() async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetPendingJobs",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);
        return MyPendingJobs.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getMyRequestDetail
  Future<MyApproveDetailModel?> getMyApproveDetail(
      int idMater, int detailType) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetRequestById?IdMaster=$idMater&DetailType=$detailType",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);

        return MyApproveDetailModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getMyRequestGetPending
  Future<MyRequestGetPending?> getMyRequestGetPending() async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetPendingRequestMasterMobile",
        {},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return MyRequestGetPending.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //GetMyTeams
  Future<MyTeamModel?> getMyTeam() async {
    try {
      var response = await apiProvider.postMethod(
        "Team/GetMyTeam",
        {"DATE": "2023-01-19T15:11:54.760Z", "ID_HR_EMPLOYEE": 6642},
      );
      if (response.statusCode == 200) {
        print(response.body);
        return MyTeamModel.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getFilterJobs
  Future<MyPendingJobs?> getFilterJobs(String query) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetPendingJobs?ID_WORK_STATUS_ARRAY=$query",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);
        return MyPendingJobs.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  //getFilterRequests
  Future<MyRequestModel?> getFilterRequests(String query) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetMyRequestMasterMobile?statuArray=$query",
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
  
  //getFilterPendingApprove
  Future<MyRequestGetPending?> getFilterPendingApprove(int query) async {
    try {
      var response = await apiProvider.postMethod(
        "RequestManagement/GetPendingRequestMasterMobile?statu=$query",
        {},
      );

      if (response.statusCode == 200) {
        print(response.body);
        return MyRequestGetPending.fromJson(response.body);
      }
    } catch (e) {
      print("$e");
    }
    return null;
  }

  
}
