class CusDealer {
  int idDealer;
  int idDealerType;
  int idDistrict;
  int idMemDefaultWarehouse;
  String dsParameter;
  int idTaxRegion;
  
  CusDealer({
    this.idDealer,
    this.idDealerType,
    this.idDistrict,
    this.idMemDefaultWarehouse,
    this.dsParameter,
    this.idTaxRegion,
  });

  static CusDealer fromMap(Map<String, dynamic> json) {
    return CusDealer()
      ..idDealer = json['idDealer'] as int
      ..idDealerType = json['idDealerType'] as int
      ..idDistrict = json['idDistrict'] as int
      ..idMemDefaultWarehouse = json['idMemDefaultWarehouse'] as int
      ..dsParameter = json['dsParameter'] as String
      ..idTaxRegion = json['idTaxRegion'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idDealer': idDealer,
        'idDealerType': idDealerType,
        'idDistrict': idDistrict,
        'idMemDefaultWarehouse': idMemDefaultWarehouse,
        'dsParameter': dsParameter,
        'idTaxRegion': idTaxRegion,
      };
}