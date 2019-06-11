class PrdProductTaxRegion {
  int idProductTaxRegion;
  int idTaxRegion;
  int idProduct;
  int mtTaxRate;
  
  PrdProductTaxRegion({
    this.idProductTaxRegion,
    this.idTaxRegion,
    this.idProduct,
    this.mtTaxRate,
  });

  static PrdProductTaxRegion fromMap(Map<String, dynamic> json) {
    return PrdProductTaxRegion()
      ..idProductTaxRegion = json['idProductTaxRegion'] as int
      ..idTaxRegion = json['idTaxRegion'] as int
      ..idProduct = json['idProduct'] as int
      ..mtTaxRate = json['mtTaxRate'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductTaxRegion': idProductTaxRegion,
        'idTaxRegion': idTaxRegion,
        'idProduct': idProduct,
        'mtTaxRate': mtTaxRate,
      };
}