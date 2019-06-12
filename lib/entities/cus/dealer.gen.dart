class Dealer {
  int idDealer;
  int idDealerType;
  int idDistrict;
  int idMemDefaultWarehouse;
  String dsParameter;
  int idTaxRegion;
  
  Dealer({
    this.idDealer,
    this.idDealerType,
    this.idDistrict,
    this.idMemDefaultWarehouse,
    this.dsParameter,
    this.idTaxRegion,
  });

  static Dealer fromMap(Map<String, dynamic> json) {
    return Dealer()
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