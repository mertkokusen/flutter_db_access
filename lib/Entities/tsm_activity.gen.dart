class TsmActivity {
  int idActivity;
  DateTime dtInsert;
  int idUserInsert;
  DateTime dtUpdate;
  int idUserUpdate;
  bool valid;
  int idCompany;
  int idUser;
  int idAgent;
  int idActivityType;
  DateTime dtActivityStart;
  DateTime dtActivityEnd;
  int idActivityStatus;
  int idActivitySubject;
  int idUserApproval;
  DateTime dtApproval;
  String dsComment;
  bool vrFlSent;
  String dsUniqueKey;
  bool flFromWeb;
  int idSurveyGeneralRequirement;
  int idSurveyCustomerActivity;
  int idCertificationType;
  int idSurveyEmployeeAssessment;
  int idSurveyCrPerformance;
  int idSurveyHealthSecurity;
  
  TsmActivity({
    this.idActivity,
    this.dtInsert,
    this.idUserInsert,
    this.dtUpdate,
    this.idUserUpdate,
    this.valid,
    this.idCompany,
    this.idUser,
    this.idAgent,
    this.idActivityType,
    this.dtActivityStart,
    this.dtActivityEnd,
    this.idActivityStatus,
    this.idActivitySubject,
    this.idUserApproval,
    this.dtApproval,
    this.dsComment,
    this.vrFlSent,
    this.dsUniqueKey,
    this.flFromWeb,
    this.idSurveyGeneralRequirement,
    this.idSurveyCustomerActivity,
    this.idCertificationType,
    this.idSurveyEmployeeAssessment,
    this.idSurveyCrPerformance,
    this.idSurveyHealthSecurity,
  });

  static TsmActivity fromMap(Map<String, dynamic> json) {
    return TsmActivity()
      ..idActivity = json['idActivity'] as int
      ..dtInsert = json['dtInsert'] == null ? null : DateTime.parse(json['dtInsert'] as String)
      ..idUserInsert = json['idUserInsert'] as int
      ..dtUpdate = json['dtUpdate'] == null ? null : DateTime.parse(json['dtUpdate'] as String)
      ..idUserUpdate = json['idUserUpdate'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idCompany = json['idCompany'] as int
      ..idUser = json['idUser'] as int
      ..idAgent = json['idAgent'] as int
      ..idActivityType = json['idActivityType'] as int
      ..dtActivityStart = json['dtActivityStart'] == null ? null : DateTime.parse(json['dtActivityStart'] as String)
      ..dtActivityEnd = json['dtActivityEnd'] == null ? null : DateTime.parse(json['dtActivityEnd'] as String)
      ..idActivityStatus = json['idActivityStatus'] as int
      ..idActivitySubject = json['idActivitySubject'] as int
      ..idUserApproval = json['idUserApproval'] as int
      ..dtApproval = json['dtApproval'] == null ? null : DateTime.parse(json['dtApproval'] as String)
      ..dsComment = json['dsComment'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..flFromWeb = json['flFromWeb'] == 1 ? true : false
      ..idSurveyGeneralRequirement = json['idSurveyGeneralRequirement'] as int
      ..idSurveyCustomerActivity = json['idSurveyCustomerActivity'] as int
      ..idCertificationType = json['idCertificationType'] as int
      ..idSurveyEmployeeAssessment = json['idSurveyEmployeeAssessment'] as int
      ..idSurveyCrPerformance = json['idSurveyCrPerformance'] as int
      ..idSurveyHealthSecurity = json['idSurveyHealthSecurity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivity': idActivity,
        'dtInsert': dtInsert?.toIso8601String(),
        'idUserInsert': idUserInsert,
        'dtUpdate': dtUpdate?.toIso8601String(),
        'idUserUpdate': idUserUpdate,
        'valid': valid,
        'idCompany': idCompany,
        'idUser': idUser,
        'idAgent': idAgent,
        'idActivityType': idActivityType,
        'dtActivityStart': dtActivityStart?.toIso8601String(),
        'dtActivityEnd': dtActivityEnd?.toIso8601String(),
        'idActivityStatus': idActivityStatus,
        'idActivitySubject': idActivitySubject,
        'idUserApproval': idUserApproval,
        'dtApproval': dtApproval?.toIso8601String(),
        'dsComment': dsComment,
        'vrFlSent': vrFlSent,
        'dsUniqueKey': dsUniqueKey,
        'flFromWeb': flFromWeb,
        'idSurveyGeneralRequirement': idSurveyGeneralRequirement,
        'idSurveyCustomerActivity': idSurveyCustomerActivity,
        'idCertificationType': idCertificationType,
        'idSurveyEmployeeAssessment': idSurveyEmployeeAssessment,
        'idSurveyCrPerformance': idSurveyCrPerformance,
        'idSurveyHealthSecurity': idSurveyHealthSecurity,
      };
}