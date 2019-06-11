class PrdPriceListType {
  int idPriceListType;
  int idCity;
  
  PrdPriceListType({
    this.idPriceListType,
    this.idCity,
  });

  static PrdPriceListType fromMap(Map<String, dynamic> json) {
    return PrdPriceListType()
      ..idPriceListType = json['idPriceListType'] as int
      ..idCity = json['idCity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPriceListType': idPriceListType,
        'idCity': idCity,
      };
}