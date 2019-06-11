class PrdPriceDiscount {
  int idPriceDiscount;
  int idChannel;
  int idCity;
  int idProduct;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  int mtDiscountRate;
  
  PrdPriceDiscount({
    this.idPriceDiscount,
    this.idChannel,
    this.idCity,
    this.idProduct,
    this.dtValidFrom,
    this.dtValidTo,
    this.mtDiscountRate,
  });

  static PrdPriceDiscount fromMap(Map<String, dynamic> json) {
    return PrdPriceDiscount()
      ..idPriceDiscount = json['idPriceDiscount'] as int
      ..idChannel = json['idChannel'] as int
      ..idCity = json['idCity'] as int
      ..idProduct = json['idProduct'] as int
      ..dtValidFrom = json['dtValidFrom'] == null ? null : DateTime.parse(json['dtValidFrom'] as String)
      ..dtValidTo = json['dtValidTo'] == null ? null : DateTime.parse(json['dtValidTo'] as String)
      ..mtDiscountRate = json['mtDiscountRate'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPriceDiscount': idPriceDiscount,
        'idChannel': idChannel,
        'idCity': idCity,
        'idProduct': idProduct,
        'dtValidFrom': dtValidFrom?.toIso8601String(),
        'dtValidTo': dtValidTo?.toIso8601String(),
        'mtDiscountRate': mtDiscountRate,
      };
}