class StoStockBalance {
  int idStockBalance;
  int idProductUnit;
  int idWarehouse;
  int idProduct;
  int idUnit;
  int mtMultiplier;
  
  StoStockBalance({
    this.idStockBalance,
    this.idProductUnit,
    this.idWarehouse,
    this.idProduct,
    this.idUnit,
    this.mtMultiplier,
  });

  static StoStockBalance fromMap(Map<String, dynamic> json) {
    return StoStockBalance()
      ..idStockBalance = json['idStockBalance'] as int
      ..idProductUnit = json['idProductUnit'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idProduct = json['idProduct'] as int
      ..idUnit = json['idUnit'] as int
      ..mtMultiplier = json['mtMultiplier'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idStockBalance': idStockBalance,
        'idProductUnit': idProductUnit,
        'idWarehouse': idWarehouse,
        'idProduct': idProduct,
        'idUnit': idUnit,
        'mtMultiplier': mtMultiplier,
      };
}