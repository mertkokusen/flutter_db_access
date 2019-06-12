class CustomerRequest {
  int idCustomerRequest;
  bool valid;
  int idCustomer;
  DateTime dtRequest;
  int idUser;
  String dsUser;
  int idRoute;
  String dsRoute;
  int idApprovalStatus;
  int idTsm;
  String dsTsm;
  DateTime dtTsmApproved;
  int idTsmApprovalStatus;
  int idRsm;
  DateTime dtRsmApproved;
  int idRsmApprovalStatus;
  bool flTsmApprovalNeed;
  bool flRsmApprovalNeed;
  String dsUniqueKey;
  bool flWeb;
  bool vrFlSent;
  
  CustomerRequest({
    this.idCustomerRequest,
    this.valid,
    this.idCustomer,
    this.dtRequest,
    this.idUser,
    this.dsUser,
    this.idRoute,
    this.dsRoute,
    this.idApprovalStatus,
    this.idTsm,
    this.dsTsm,
    this.dtTsmApproved,
    this.idTsmApprovalStatus,
    this.idRsm,
    this.dtRsmApproved,
    this.idRsmApprovalStatus,
    this.flTsmApprovalNeed,
    this.flRsmApprovalNeed,
    this.dsUniqueKey,
    this.flWeb,
    this.vrFlSent,
  });

  static CustomerRequest fromMap(Map<String, dynamic> json) {
    return CustomerRequest()
      ..idCustomerRequest = json['idCustomerRequest'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idCustomer = json['idCustomer'] as int
      ..dtRequest = json['dtRequest'] as DateTime
      ..idUser = json['idUser'] as int
      ..dsUser = json['dsUser'] as String
      ..idRoute = json['idRoute'] as int
      ..dsRoute = json['dsRoute'] as String
      ..idApprovalStatus = json['idApprovalStatus'] as int
      ..idTsm = json['idTsm'] as int
      ..dsTsm = json['dsTsm'] as String
      ..dtTsmApproved = json['dtTsmApproved'] as DateTime
      ..idTsmApprovalStatus = json['idTsmApprovalStatus'] as int
      ..idRsm = json['idRsm'] as int
      ..dtRsmApproved = json['dtRsmApproved'] as DateTime
      ..idRsmApprovalStatus = json['idRsmApprovalStatus'] as int
      ..flTsmApprovalNeed = json['flTsmApprovalNeed'] == 1 ? true : false
      ..flRsmApprovalNeed = json['flRsmApprovalNeed'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..flWeb = json['flWeb'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerRequest': idCustomerRequest,
        'valid': valid,
        'idCustomer': idCustomer,
        'dtRequest': dtRequest,
        'idUser': idUser,
        'dsUser': dsUser,
        'idRoute': idRoute,
        'dsRoute': dsRoute,
        'idApprovalStatus': idApprovalStatus,
        'idTsm': idTsm,
        'dsTsm': dsTsm,
        'dtTsmApproved': dtTsmApproved,
        'idTsmApprovalStatus': idTsmApprovalStatus,
        'idRsm': idRsm,
        'dtRsmApproved': dtRsmApproved,
        'idRsmApprovalStatus': idRsmApprovalStatus,
        'flTsmApprovalNeed': flTsmApprovalNeed,
        'flRsmApprovalNeed': flRsmApprovalNeed,
        'dsUniqueKey': dsUniqueKey,
        'flWeb': flWeb,
        'vrFlSent': vrFlSent,
      };
}