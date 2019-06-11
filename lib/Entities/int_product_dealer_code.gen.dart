class IntProductDealerCode {
  int idProductDealerCode;
  int idDealer;
  int idProduct;
  String dsProductNo;
  int mtDivisible;
  
  IntProductDealerCode({
    this.idProductDealerCode,
    this.idDealer,
    this.idProduct,
    this.dsProductNo,
    this.mtDivisible,
  });

  static IntProductDealerCode fromMap(Map<String, dynamic> json) {
    return IntProductDealerCode()
      ..idProductDealerCode = json['idProductDealerCode'] as int
      ..idDealer = json['idDealer'] as int
      ..idProduct = json['idProduct'] as int
      ..dsProductNo = json['dsProductNo'] as String
      ..mtDivisible = json['mtDivisible'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductDealerCode': idProductDealerCode,
        'idDealer': idDealer,
        'idProduct': idProduct,
        'dsProductNo': dsProductNo,
        'mtDivisible': mtDivisible,
      };
}