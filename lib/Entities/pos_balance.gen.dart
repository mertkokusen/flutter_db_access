class PosBalance {
  int idBalance;
  int idProduct;
  int mtQuantity;
  int idCustomer;
  int idMainCustomer;
  int idWarehouse;
  
  PosBalance({
    this.idBalance,
    this.idProduct,
    this.mtQuantity,
    this.idCustomer,
    this.idMainCustomer,
    this.idWarehouse,
  });

  static PosBalance fromMap(Map<String, dynamic> json) {
    return PosBalance()
      ..idBalance = json['idBalance'] as int
      ..idProduct = json['idProduct'] as int
      ..mtQuantity = json['mtQuantity'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idWarehouse = json['idWarehouse'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idBalance': idBalance,
        'idProduct': idProduct,
        'mtQuantity': mtQuantity,
        'idCustomer': idCustomer,
        'idMainCustomer': idMainCustomer,
        'idWarehouse': idWarehouse,
      };
}