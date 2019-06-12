class CustomerInventory {
  int idCustomerInventory;
  int idRoute;
  int idCustomer;
  int idMainCustomer;
  int idMem;
  String dsBarcode;
  String dsSerial;
  int idModel;
  int idLogoType;
  String dsOwnerErpCode;
  
  CustomerInventory({
    this.idCustomerInventory,
    this.idRoute,
    this.idCustomer,
    this.idMainCustomer,
    this.idMem,
    this.dsBarcode,
    this.dsSerial,
    this.idModel,
    this.idLogoType,
    this.dsOwnerErpCode,
  });

  static CustomerInventory fromMap(Map<String, dynamic> json) {
    return CustomerInventory()
      ..idCustomerInventory = json['idCustomerInventory'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idMem = json['idMem'] as int
      ..dsBarcode = json['dsBarcode'] as String
      ..dsSerial = json['dsSerial'] as String
      ..idModel = json['idModel'] as int
      ..idLogoType = json['idLogoType'] as int
      ..dsOwnerErpCode = json['dsOwnerErpCode'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerInventory': idCustomerInventory,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idMainCustomer': idMainCustomer,
        'idMem': idMem,
        'dsBarcode': dsBarcode,
        'dsSerial': dsSerial,
        'idModel': idModel,
        'idLogoType': idLogoType,
        'dsOwnerErpCode': dsOwnerErpCode,
      };
}