class OrdCopiedOrder {
  int idOrder;
  DateTime dtOrder;
  int idCustomer;
  int idCustomerDelivery;
  int idContract;
  int idContractCustomer;
  int mtTotalAmount;
  String dsNote;
  String dsNote2;
  
  OrdCopiedOrder({
    this.idOrder,
    this.dtOrder,
    this.idCustomer,
    this.idCustomerDelivery,
    this.idContract,
    this.idContractCustomer,
    this.mtTotalAmount,
    this.dsNote,
    this.dsNote2,
  });

  static OrdCopiedOrder fromMap(Map<String, dynamic> json) {
    return OrdCopiedOrder()
      ..idOrder = json['idOrder'] as int
      ..dtOrder = json['dtOrder'] == null ? null : DateTime.parse(json['dtOrder'] as String)
      ..idCustomer = json['idCustomer'] as int
      ..idCustomerDelivery = json['idCustomerDelivery'] as int
      ..idContract = json['idContract'] as int
      ..idContractCustomer = json['idContractCustomer'] as int
      ..mtTotalAmount = json['mtTotalAmount'] as int
      ..dsNote = json['dsNote'] as String
      ..dsNote2 = json['dsNote2'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrder': idOrder,
        'dtOrder': dtOrder?.toIso8601String(),
        'idCustomer': idCustomer,
        'idCustomerDelivery': idCustomerDelivery,
        'idContract': idContract,
        'idContractCustomer': idContractCustomer,
        'mtTotalAmount': mtTotalAmount,
        'dsNote': dsNote,
        'dsNote2': dsNote2,
      };
}