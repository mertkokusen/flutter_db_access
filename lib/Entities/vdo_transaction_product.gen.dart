class VdoTransactionProduct {
  int idTransactionProduct;
  int idTransaction;
  int idProduct;
  int mtQuantity;
  int idUnit;
  bool valid;
  String dsUniqueKey;
  
  VdoTransactionProduct({
    this.idTransactionProduct,
    this.idTransaction,
    this.idProduct,
    this.mtQuantity,
    this.idUnit,
    this.valid,
    this.dsUniqueKey,
  });

  static VdoTransactionProduct fromMap(Map<String, dynamic> json) {
    return VdoTransactionProduct()
      ..idTransactionProduct = json['idTransactionProduct'] as int
      ..idTransaction = json['idTransaction'] as int
      ..idProduct = json['idProduct'] as int
      ..mtQuantity = json['mtQuantity'] as int
      ..idUnit = json['idUnit'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionProduct': idTransactionProduct,
        'idTransaction': idTransaction,
        'idProduct': idProduct,
        'mtQuantity': mtQuantity,
        'idUnit': idUnit,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
      };
}