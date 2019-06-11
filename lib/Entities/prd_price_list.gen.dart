class PrdPriceList {
  int idPriceList;
  int idPriceListType;
  int idProduct;
  int idUnit;
  int mtPrice;
  
  PrdPriceList({
    this.idPriceList,
    this.idPriceListType,
    this.idProduct,
    this.idUnit,
    this.mtPrice,
  });

  static PrdPriceList fromMap(Map<String, dynamic> json) {
    return PrdPriceList()
      ..idPriceList = json['idPriceList'] as int
      ..idPriceListType = json['idPriceListType'] as int
      ..idProduct = json['idProduct'] as int
      ..idUnit = json['idUnit'] as int
      ..mtPrice = json['mtPrice'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPriceList': idPriceList,
        'idPriceListType': idPriceListType,
        'idProduct': idProduct,
        'idUnit': idUnit,
        'mtPrice': mtPrice,
      };
}