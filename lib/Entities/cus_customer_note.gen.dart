class CusCustomerNote {
  int idCustomerNote;
  DateTime dtUpdate;
  int idUser;
  int idCustomer;
  String dsNote;
  String dsUser;
  String dsUniqueKey;
  DateTime dtDate;
  bool flRead;
  bool vrFlSent;
  int idSource;
  
  CusCustomerNote({
    this.idCustomerNote,
    this.dtUpdate,
    this.idUser,
    this.idCustomer,
    this.dsNote,
    this.dsUser,
    this.dsUniqueKey,
    this.dtDate,
    this.flRead,
    this.vrFlSent,
    this.idSource,
  });

  static CusCustomerNote fromMap(Map<String, dynamic> json) {
    return CusCustomerNote()
      ..idCustomerNote = json['idCustomerNote'] as int
      ..dtUpdate = json['dtUpdate'] == null ? null : DateTime.parse(json['dtUpdate'] as String)
      ..idUser = json['idUser'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dsNote = json['dsNote'] as String
      ..dsUser = json['dsUser'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dtDate = json['dtDate'] == null ? null : DateTime.parse(json['dtDate'] as String)
      ..flRead = json['flRead'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..idSource = json['idSource'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerNote': idCustomerNote,
        'dtUpdate': dtUpdate?.toIso8601String(),
        'idUser': idUser,
        'idCustomer': idCustomer,
        'dsNote': dsNote,
        'dsUser': dsUser,
        'dsUniqueKey': dsUniqueKey,
        'dtDate': dtDate?.toIso8601String(),
        'flRead': flRead,
        'vrFlSent': vrFlSent,
        'idSource': idSource,
      };
}