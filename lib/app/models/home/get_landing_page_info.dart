// ignore_for_file: non_constant_identifier_names

class GetLandingPageInfoModel {
  GetLandingPageInfoModel({
    this.RefreshToken,
    this.Token,
    this.data,
  });
  late String? RefreshToken;
  late String? Token;
  late Data? data;

  GetLandingPageInfoModel.fromJson(Map<String, dynamic> json) {
    RefreshToken = json['RefreshToken'];
    Token = json['Token'];
    data = Data.fromJson(json['Data']);
  }

  ///
  /*  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['RefreshToken'] = RefreshToken;
    data['Token'] = Token;
    data['Data'] = toJson(Data());
    return data;
  } */
}

class Data {
  Data({
    required this.LastUpdateDate,
    required this.UnReadedNotificationCount,
    required this.IsManager,
    required this.MyRequestCount,
    required this.GetMyApprovalCount,
    required this.GetMyWorks,
    required this.myLastPayroll,
    required this.menuInfo,
    required this.vacationInfo,
    required this.IsLeaveUsed,
    required this.IdHrEmployee,
    required this.GuidHrEmployee,
    required this.NameSurname,
    required this.PositionName,
    required this.idFirmsEmployee,
    required this.InScope,
    required this.OutScope,
    required this.OutScopeFirstLevel,
    required this.InPeroid,
    required this.InPeroidManager,
    required this.EvaluationCompleted,
    required this.IsAuthorizedToView,
    required this.IsAuthorizedToBenefits,
    required this.CimporGroup,
    required this.ChemsonGroup,
    this.KvKKModel,
    this.SurveyList,
    required this.CandidateTrackingSystemMobileSee,
    required this.SunAkademi,
  });
  late final String LastUpdateDate;
  late final dynamic UnReadedNotificationCount;
  late final bool IsManager;
  late final dynamic MyRequestCount;
  late final dynamic GetMyApprovalCount;
  late final dynamic GetMyWorks;
  late final MyLastPayroll myLastPayroll;
  late final List<MenuInfo> menuInfo;
  late final VacationInfo vacationInfo;
  late final bool IsLeaveUsed;
  late final dynamic IdHrEmployee;
  late final String GuidHrEmployee;
  late final String NameSurname;
  late final String PositionName;
  late final dynamic idFirmsEmployee;
  late final bool InScope;
  late final bool OutScope;
  late final bool OutScopeFirstLevel;
  late final bool InPeroid;
  late final bool InPeroidManager;
  late final bool EvaluationCompleted;
  late final bool IsAuthorizedToView;
  late final bool IsAuthorizedToBenefits;
  late final bool CimporGroup;
  late final bool ChemsonGroup;
  late final dynamic KvKKModel;
  late final dynamic SurveyList;
  late final bool CandidateTrackingSystemMobileSee;
  late final bool SunAkademi;

  Data.fromJson(Map<String, dynamic> json) {
    LastUpdateDate = json['LastUpdateDate'];
    UnReadedNotificationCount = json['UnReadedNotificationCount'];
    IsManager = json['IsManager'];
    MyRequestCount = json['MyRequestCount'];
    GetMyApprovalCount = json['GetMyApprovalCount'];
    GetMyWorks = json['GetMyWorks'];
    myLastPayroll = MyLastPayroll.fromJson(json['MyLastPayroll']);
    menuInfo =
        List.from(json['MenuInfo']).map((e) => MenuInfo.fromJson(e)).toList();
    vacationInfo = VacationInfo.fromJson(json['VacationInfo']);
    IsLeaveUsed = json['IsLeaveUsed'];
    IdHrEmployee = json['IdHrEmployee'];
    GuidHrEmployee = json['GuidHrEmployee'];
    NameSurname = json['NameSurname'];
    PositionName = json['PositionName'];
    idFirmsEmployee = json['idFirmsEmployee'];
    InScope = json['InScope'];
    OutScope = json['OutScope'];
    OutScopeFirstLevel = json['OutScopeFirstLevel'];
    InPeroid = json['InPeroid'];
    InPeroidManager = json['InPeroidManager'];
    EvaluationCompleted = json['EvaluationCompleted'];
    IsAuthorizedToView = json['IsAuthorizedToView'];
    IsAuthorizedToBenefits = json['IsAuthorizedToBenefits'];
    CimporGroup = json['CimporGroup'];
    ChemsonGroup = json['ChemsonGroup'];
    KvKKModel = null;
    SurveyList = null;
    CandidateTrackingSystemMobileSee = json['CandidateTrackingSystemMobileSee'];
    SunAkademi = json['SunAkademi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['LastUpdateDate'] = LastUpdateDate;
    data['UnReadedNotificationCount'] = UnReadedNotificationCount;
    data['IsManager'] = IsManager;
    data['MyRequestCount'] = MyRequestCount;
    data['GetMyApprovalCount'] = GetMyApprovalCount;
    data['GetMyWorks'] = GetMyWorks;
    data['MyLastPayroll'] = myLastPayroll.toJson();
    data['MenuInfo'] = menuInfo.map((e) => e.toJson()).toList();
    data['VacationInfo'] = vacationInfo.toJson();
    data['IsLeaveUsed'] = IsLeaveUsed;
    data['IdHrEmployee'] = IdHrEmployee;
    data['GuidHrEmployee'] = GuidHrEmployee;
    data['NameSurname'] = NameSurname;
    data['PositionName'] = PositionName;
    data['idFirmsEmployee'] = idFirmsEmployee;
    data['InScope'] = InScope;
    data['OutScope'] = OutScope;
    data['OutScopeFirstLevel'] = OutScopeFirstLevel;
    data['InPeroid'] = InPeroid;
    data['InPeroidManager'] = InPeroidManager;
    data['EvaluationCompleted'] = EvaluationCompleted;
    data['IsAuthorizedToView'] = IsAuthorizedToView;
    data['IsAuthorizedToBenefits'] = IsAuthorizedToBenefits;
    data['CimporGroup'] = CimporGroup;
    data['ChemsonGroup'] = ChemsonGroup;
    data['KvKKModel'] = KvKKModel;
    data['SurveyList'] = SurveyList;
    data['CandidateTrackingSystemMobileSee'] = CandidateTrackingSystemMobileSee;
    data['SunAkademi'] = SunAkademi;
    return data;
  }
}

class MyLastPayroll {
  MyLastPayroll({
    required this.DocumentYear,
    required this.DocumnetMonth,
    required this.DocumentName,
    required this.DocumentUid,
  });
  late final dynamic DocumentYear;
  late final dynamic DocumnetMonth;
  late final String DocumentName;
  late final String DocumentUid;

  MyLastPayroll.fromJson(Map<String, dynamic> json) {
    DocumentYear = json['DocumentYear'];
    DocumnetMonth = json['DocumnetMonth'];
    DocumentName = json['DocumentName'];
    DocumentUid = json['DocumentUid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['DocumentYear'] = DocumentYear;
    data['DocumnetMonth'] = DocumnetMonth;
    data['DocumentName'] = DocumentName;
    data['DocumentUid'] = DocumentUid;
    return data;
  }
}

class MenuInfo {
  MenuInfo({
    required this.MENUNAME,
    required this.ORDERNUMBERMANAGER,
    required this.ORDERNUMBEREMPLOYEE,
    required this.MENUTYPE,
  });
  late final String MENUNAME;
  late final dynamic ORDERNUMBERMANAGER;
  late final dynamic ORDERNUMBEREMPLOYEE;
  late final String MENUTYPE;

  MenuInfo.fromJson(Map<String, dynamic> json) {
    MENUNAME = json['MENU_NAME'];
    ORDERNUMBERMANAGER = json['ORDER_NUMBER_MANAGER'];
    ORDERNUMBEREMPLOYEE = json['ORDER_NUMBER_EMPLOYEE'];
    MENUTYPE = json['MENU_TYPE'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['MENU_NAME'] = MENUNAME;
    data['ORDER_NUMBER_MANAGER'] = ORDERNUMBERMANAGER;
    data['ORDER_NUMBER_EMPLOYEE'] = ORDERNUMBEREMPLOYEE;
    data['MENU_TYPE'] = MENUTYPE;
    return data;
  }
}

class VacationInfo {
  VacationInfo({
    required this.employeeEarnedRightsList,
    required this.TotalCount,
  });
  late final List<EmployeeEarnedRightsList> employeeEarnedRightsList;
  late final dynamic TotalCount;

  VacationInfo.fromJson(Map<String, dynamic> json) {
    employeeEarnedRightsList = List.from(json['EmployeeEarnedRightsList'])
        .map((e) => EmployeeEarnedRightsList.fromJson(e))
        .toList();
    TotalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['EmployeeEarnedRightsList'] =
        employeeEarnedRightsList.map((e) => e.toJson()).toList();
    data['TotalCount'] = TotalCount;
    return data;
  }
}

class EmployeeEarnedRightsList {
  EmployeeEarnedRightsList({
    required this.IDHREMPLOYEE,
    required this.EMPLOYEENAME,
    required this.EMPLOYEESURNAME,
    required this.ANNUALLEAVEBALANCE,
    required this.NEXTLEAVEALLOWANCEDATE,
    required this.NEXTLEAVEALLOWANCEDAYS,
    required this.ISHEAD,
    this.POSITIONNAME,
    this.PHOTOADDRESS,
  });
  late final dynamic IDHREMPLOYEE;
  late final String EMPLOYEENAME;
  late final String EMPLOYEESURNAME;
  late final dynamic ANNUALLEAVEBALANCE;
  late final String NEXTLEAVEALLOWANCEDATE;
  late final dynamic NEXTLEAVEALLOWANCEDAYS;
  late final bool ISHEAD;
  late final dynamic POSITIONNAME;
  late final dynamic PHOTOADDRESS;

  EmployeeEarnedRightsList.fromJson(Map<String, dynamic> json) {
    IDHREMPLOYEE = json['ID_HR_EMPLOYEE'];
    EMPLOYEENAME = json['EMPLOYEE_NAME'];
    EMPLOYEESURNAME = json['EMPLOYEE_SURNAME'];
    ANNUALLEAVEBALANCE = json['ANNUAL_LEAVE_BALANCE'];
    NEXTLEAVEALLOWANCEDATE = json['NEXT_LEAVE_ALLOWANCE_DATE'];
    NEXTLEAVEALLOWANCEDAYS = json['NEXT_LEAVE_ALLOWANCE_DAYS'];
    ISHEAD = json['IS_HEAD'];
    POSITIONNAME = null;
    PHOTOADDRESS = null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ID_HR_EMPLOYEE'] = IDHREMPLOYEE;
    data['EMPLOYEE_NAME'] = EMPLOYEENAME;
    data['EMPLOYEE_SURNAME'] = EMPLOYEESURNAME;
    data['ANNUAL_LEAVE_BALANCE'] = ANNUALLEAVEBALANCE;
    data['NEXT_LEAVE_ALLOWANCE_DATE'] = NEXTLEAVEALLOWANCEDATE;
    data['NEXT_LEAVE_ALLOWANCE_DAYS'] = NEXTLEAVEALLOWANCEDAYS;
    data['IS_HEAD'] = ISHEAD;
    data['POSITION_NAME'] = POSITIONNAME;
    data['PHOTO_ADDRESS'] = PHOTOADDRESS;
    return data;
  }
}
