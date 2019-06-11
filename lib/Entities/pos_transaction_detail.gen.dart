class PosTransactionDetail {
  int idTransactionDetail;
  int idTransaction;
  bool valid;
  int idProduct;
  int mtQuantity;
  String dsUniqueKey;
  
  PosTransactionDetail({
    this.idTransactionDetail,
    this.idTransaction,
    this.valid,
    this.idProduct,
    this.mtQuantity,
    this.dsUniqueKey,
  });

  static PosTransactionDetail fromMap(Map<String, dynamic> json) {
    return PosTransactionDetail()
      ..idTransactionDetail = json['idTransactionDetail'] as int
      ..idTransaction = json['idTransaction'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idProduct = json['idProduct'] as int
      ..mtQuantity = json['mtQuantity'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionDetail': idTransactionDetail,
        'idTransaction': idTransaction,
        'valid': valid,
        'idProduct': idProduct,
        'mtQuantity': mtQuantity,
        'dsUniqueKey': dsUniqueKey,
      };
}