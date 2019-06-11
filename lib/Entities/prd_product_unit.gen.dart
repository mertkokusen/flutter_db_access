class PrdProductUnit {
  int idProductUnit;
  int idProduct;
  int idUnit;
  String dsBarcode;
  bool flSmallUnit;
  bool flSalesUnit;
  int mtMultiplier;
  int mtMultiplierSales;
  int mtMultiplierRc;
  int mtStock;
  int mtStockDiscarded;
  int mtStockDealer;
  int mtWeightNet;
  int mtWeightGross;
  
  PrdProductUnit({
    this.idProductUnit,
    this.idProduct,
    this.idUnit,
    this.dsBarcode,
    this.flSmallUnit,
    this.flSalesUnit,
    this.mtMultiplier,
    this.mtMultiplierSales,
    this.mtMultiplierRc,
    this.mtStock,
    this.mtStockDiscarded,
    this.mtStockDealer,
    this.mtWeightNet,
    this.mtWeightGross,
  });

  static PrdProductUnit fromMap(Map<String, dynamic> json) {
    return PrdProductUnit()
      ..idProductUnit = json['idProductUnit'] as int
      ..idProduct = json['idProduct'] as int
      ..idUnit = json['idUnit'] as int
      ..dsBarcode = json['dsBarcode'] as String
      ..flSmallUnit = json['flSmallUnit'] == 1 ? true : false
      ..flSalesUnit = json['flSalesUnit'] == 1 ? true : false
      ..mtMultiplier = json['mtMultiplier'] as int
      ..mtMultiplierSales = json['mtMultiplierSales'] as int
      ..mtMultiplierRc = json['mtMultiplierRc'] as int
      ..mtStock = json['mtStock'] as int
      ..mtStockDiscarded = json['mtStockDiscarded'] as int
      ..mtStockDealer = json['mtStockDealer'] as int
      ..mtWeightNet = json['mtWeightNet'] as int
      ..mtWeightGross = json['mtWeightGross'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductUnit': idProductUnit,
        'idProduct': idProduct,
        'idUnit': idUnit,
        'dsBarcode': dsBarcode,
        'flSmallUnit': flSmallUnit,
        'flSalesUnit': flSalesUnit,
        'mtMultiplier': mtMultiplier,
        'mtMultiplierSales': mtMultiplierSales,
        'mtMultiplierRc': mtMultiplierRc,
        'mtStock': mtStock,
        'mtStockDiscarded': mtStockDiscarded,
        'mtStockDealer': mtStockDealer,
        'mtWeightNet': mtWeightNet,
        'mtWeightGross': mtWeightGross,
      };
}