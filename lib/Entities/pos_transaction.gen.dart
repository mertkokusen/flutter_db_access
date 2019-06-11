class PosTransaction {
  int idTransaction;
  bool valid;
  DateTime dtInsert;
  DateTime dtTransaction;
  int idTransactionType;
  int idWarehouse;
  int idCustomer;
  int idMainCustomer;
  int idVisit;
  int idBalance;
  int idCustomerTo;
  int idMainCustomerTo;
  int idWarehouseTo;
  String dsComment;
  String dsUniqueKey;
  bool vrFlSent;
  
  PosTransaction({
    this.idTransaction,
    this.valid,
    this.dtInsert,
    this.dtTransaction,
    this.idTransactionType,
    this.idWarehouse,
    this.idCustomer,
    this.idMainCustomer,
    this.idVisit,
    this.idBalance,
    this.idCustomerTo,
    this.idMainCustomerTo,
    this.idWarehouseTo,
    this.dsComment,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static PosTransaction fromMap(Map<String, dynamic> json) {
    return PosTransaction()
      ..idTransaction = json['idTransaction'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dtInsert = json['dtInsert'] == null ? null : DateTime.parse(json['dtInsert'] as String)
      ..dtTransaction = json['dtTransaction'] == null ? null : DateTime.parse(json['dtTransaction'] as String)
      ..idTransactionType = json['idTransactionType'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idVisit = json['idVisit'] as int
      ..idBalance = json['idBalance'] as int
      ..idCustomerTo = json['idCustomerTo'] as int
      ..idMainCustomerTo = json['idMainCustomerTo'] as int
      ..idWarehouseTo = json['idWarehouseTo'] as int
      ..dsComment = json['dsComment'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransaction': idTransaction,
        'valid': valid,
        'dtInsert': dtInsert?.toIso8601String(),
        'dtTransaction': dtTransaction?.toIso8601String(),
        'idTransactionType': idTransactionType,
        'idWarehouse': idWarehouse,
        'idCustomer': idCustomer,
        'idMainCustomer': idMainCustomer,
        'idVisit': idVisit,
        'idBalance': idBalance,
        'idCustomerTo': idCustomerTo,
        'idMainCustomerTo': idMainCustomerTo,
        'idWarehouseTo': idWarehouseTo,
        'dsComment': dsComment,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}