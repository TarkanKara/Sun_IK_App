// ignore_for_file: avoid_print

import 'package:sun_ik_app/app/models/home/get_landing_page_info.dart';
import 'package:sun_ik_app/app/models/login/login_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_model.dart';
import 'package:sun_ik_app/app/models/my_payroll/my_payroll_pdf_model.dart';
import 'package:sun_ik_app/app/models/my_request/my_request_model.dart';

import '../app/models/home/my_profile_model.dart';

import '../app/models/language/my_app_language_model.dart';
import '../app/models/my_request/my_request_get_pending_model.dart';
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
}
