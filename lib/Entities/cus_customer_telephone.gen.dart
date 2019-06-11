class CusCustomerTelephone {
  int idCustomerTelephone;
  bool valid;
  int idSalesOrg;
  int idCustomer;
  int idTelephoneType;
  String dsTelephone;
  String dsComment;
  String dsUniqueKey;
  bool flErp;
  bool flWeb;
  bool vrFlSent;
  
  CusCustomerTelephone({
    this.idCustomerTelephone,
    this.valid,
    this.idSalesOrg,
    this.idCustomer,
    this.idTelephoneType,
    this.dsTelephone,
    this.dsComment,
    this.dsUniqueKey,
    this.flErp,
    this.flWeb,
    this.vrFlSent,
  });

  static CusCustomerTelephone fromMap(Map<String, dynamic> json) {
    return CusCustomerTelephone()
      ..idCustomerTelephone = json['idCustomerTelephone'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idTelephoneType = json['idTelephoneType'] as int
      ..dsTelephone = json['dsTelephone'] as String
      ..dsComment = json['dsComment'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..flErp = json['flErp'] == 1 ? true : false
      ..flWeb = json['flWeb'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerTelephone': idCustomerTelephone,
        'valid': valid,
        'idSalesOrg': idSalesOrg,
        'idCustomer': idCustomer,
        'idTelephoneType': idTelephoneType,
        'dsTelephone': dsTelephone,
        'dsComment': dsComment,
        'dsUniqueKey': dsUniqueKey,
        'flErp': flErp,
        'flWeb': flWeb,
        'vrFlSent': vrFlSent,
      };
}