class StoCustomerBalanceDetail {
  int idCustomerBalanceDetail;
  int idCustomerBalance;
  int idProduct;
  int idUnit;
  int mtShelfQuantity;
  bool valid;
  String dsUniqueKey;
  
  StoCustomerBalanceDetail({
    this.idCustomerBalanceDetail,
    this.idCustomerBalance,
    this.idProduct,
    this.idUnit,
    this.mtShelfQuantity,
    this.valid,
    this.dsUniqueKey,
  });

  static StoCustomerBalanceDetail fromMap(Map<String, dynamic> json) {
    return StoCustomerBalanceDetail()
      ..idCustomerBalanceDetail = json['idCustomerBalanceDetail'] as int
      ..idCustomerBalance = json['idCustomerBalance'] as int
      ..idProduct = json['idProduct'] as int
      ..idUnit = json['idUnit'] as int
      ..mtShelfQuantity = json['mtShelfQuantity'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerBalanceDetail': idCustomerBalanceDetail,
        'idCustomerBalance': idCustomerBalance,
        'idProduct': idProduct,
        'idUnit': idUnit,
        'mtShelfQuantity': mtShelfQuantity,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
      };
}