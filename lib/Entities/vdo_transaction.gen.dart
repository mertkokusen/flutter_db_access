class VdoTransaction {
  int idTransaction;
  int idDealer;
  int idDocumentType;
  int idCustomer;
  int idDeliveryCustomer;
  int idAgent;
  int idRoute;
  int idStatus;
  DateTime dtTransaction;
  int idVisit;
  bool valid;
  String dsUniqueKey;
  bool vrFlSent;
  
  VdoTransaction({
    this.idTransaction,
    this.idDealer,
    this.idDocumentType,
    this.idCustomer,
    this.idDeliveryCustomer,
    this.idAgent,
    this.idRoute,
    this.idStatus,
    this.dtTransaction,
    this.idVisit,
    this.valid,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static VdoTransaction fromMap(Map<String, dynamic> json) {
    return VdoTransaction()
      ..idTransaction = json['idTransaction'] as int
      ..idDealer = json['idDealer'] as int
      ..idDocumentType = json['idDocumentType'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idDeliveryCustomer = json['idDeliveryCustomer'] as int
      ..idAgent = json['idAgent'] as int
      ..idRoute = json['idRoute'] as int
      ..idStatus = json['idStatus'] as int
      ..dtTransaction = json['dtTransaction'] == null ? null : DateTime.parse(json['dtTransaction'] as String)
      ..idVisit = json['idVisit'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransaction': idTransaction,
        'idDealer': idDealer,
        'idDocumentType': idDocumentType,
        'idCustomer': idCustomer,
        'idDeliveryCustomer': idDeliveryCustomer,
        'idAgent': idAgent,
        'idRoute': idRoute,
        'idStatus': idStatus,
        'dtTransaction': dtTransaction?.toIso8601String(),
        'idVisit': idVisit,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}