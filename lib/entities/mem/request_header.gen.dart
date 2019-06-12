class RequestHeader {
  int idRequestHeader;
  int idPk;
  DateTime dtCreation;
  DateTime dtAction;
  int idCustomerSource;
  String dsCustomerSource;
  String dsCustomerSourceAddress;
  int idCustomerTarget;
  String dsCustomerTarget;
  String dsCustomerTargetAddress;
  int idRoute;
  int idRepairReason;
  int idErpStatus;
  String dsErpStatus;
  int idRequestType;
  String dsRequestType;
  int idApprovalStatus;
  String dsApprovalStatus;
  String dsUserCreated;
  int idApprovalStatusNew;
  int flFromWeb;
  String dsUniqueKey;
  bool vrFlSent;
  
  RequestHeader({
    this.idRequestHeader,
    this.idPk,
    this.dtCreation,
    this.dtAction,
    this.idCustomerSource,
    this.dsCustomerSource,
    this.dsCustomerSourceAddress,
    this.idCustomerTarget,
    this.dsCustomerTarget,
    this.dsCustomerTargetAddress,
    this.idRoute,
    this.idRepairReason,
    this.idErpStatus,
    this.dsErpStatus,
    this.idRequestType,
    this.dsRequestType,
    this.idApprovalStatus,
    this.dsApprovalStatus,
    this.dsUserCreated,
    this.idApprovalStatusNew,
    this.flFromWeb,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static RequestHeader fromMap(Map<String, dynamic> json) {
    return RequestHeader()
      ..idRequestHeader = json['idRequestHeader'] as int
      ..idPk = json['idPk'] as int
      ..dtCreation = json['dtCreation'] == null ? null : DateTime.parse(json['dtCreation'] as String)
      ..dtAction = json['dtAction'] == null ? null : DateTime.parse(json['dtAction'] as String)
      ..idCustomerSource = json['idCustomerSource'] as int
      ..dsCustomerSource = json['dsCustomerSource'] as String
      ..dsCustomerSourceAddress = json['dsCustomerSourceAddress'] as String
      ..idCustomerTarget = json['idCustomerTarget'] as int
      ..dsCustomerTarget = json['dsCustomerTarget'] as String
      ..dsCustomerTargetAddress = json['dsCustomerTargetAddress'] as String
      ..idRoute = json['idRoute'] as int
      ..idRepairReason = json['idRepairReason'] as int
      ..idErpStatus = json['idErpStatus'] as int
      ..dsErpStatus = json['dsErpStatus'] as String
      ..idRequestType = json['idRequestType'] as int
      ..dsRequestType = json['dsRequestType'] as String
      ..idApprovalStatus = json['idApprovalStatus'] as int
      ..dsApprovalStatus = json['dsApprovalStatus'] as String
      ..dsUserCreated = json['dsUserCreated'] as String
      ..idApprovalStatusNew = json['idApprovalStatusNew'] as int
      ..flFromWeb = json['flFromWeb'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRequestHeader': idRequestHeader,
        'idPk': idPk,
        'dtCreation': dtCreation?.toIso8601String(),
        'dtAction': dtAction?.toIso8601String(),
        'idCustomerSource': idCustomerSource,
        'dsCustomerSource': dsCustomerSource,
        'dsCustomerSourceAddress': dsCustomerSourceAddress,
        'idCustomerTarget': idCustomerTarget,
        'dsCustomerTarget': dsCustomerTarget,
        'dsCustomerTargetAddress': dsCustomerTargetAddress,
        'idRoute': idRoute,
        'idRepairReason': idRepairReason,
        'idErpStatus': idErpStatus,
        'dsErpStatus': dsErpStatus,
        'idRequestType': idRequestType,
        'dsRequestType': dsRequestType,
        'idApprovalStatus': idApprovalStatus,
        'dsApprovalStatus': dsApprovalStatus,
        'dsUserCreated': dsUserCreated,
        'idApprovalStatusNew': idApprovalStatusNew,
        'flFromWeb': flFromWeb,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}