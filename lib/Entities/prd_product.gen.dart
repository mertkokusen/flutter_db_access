class PrdProduct {
  int idProduct;
  int idProductType;
  String dsProduct;
  String dsProductLong;
  String dsProductNo;
  int idUnitSmall;
  int idUnitSales;
  int idMku;
  int idCategory1;
  int idCategory2;
  int idCategory3;
  int idCategory4;
  int idCategory5;
  int idCategory6;
  int idCategory7;
  int idBusinessCategory1;
  int idBusinessCategory2;
  int idBusinessCategory3;
  int idGroupCode1;
  int idGroupCode2;
  int idGroupCode3;
  int idDiscountGroup;
  bool flActive;
  bool flReverseStock;
  bool flEnabledForDirect;
  bool flEnabledForIndirect;
  bool flPrimaryGtin;
  int mtDivisibleOnProduct;
  String dsTaxClassification;
  String dsErpCodeDefault;
  String dsErpCodeGtin;
  String dsTradeItemErpCode;
  String dsIntProductCode;
  
  PrdProduct({
    this.idProduct,
    this.idProductType,
    this.dsProduct,
    this.dsProductLong,
    this.dsProductNo,
    this.idUnitSmall,
    this.idUnitSales,
    this.idMku,
    this.idCategory1,
    this.idCategory2,
    this.idCategory3,
    this.idCategory4,
    this.idCategory5,
    this.idCategory6,
    this.idCategory7,
    this.idBusinessCategory1,
    this.idBusinessCategory2,
    this.idBusinessCategory3,
    this.idGroupCode1,
    this.idGroupCode2,
    this.idGroupCode3,
    this.idDiscountGroup,
    this.flActive,
    this.flReverseStock,
    this.flEnabledForDirect,
    this.flEnabledForIndirect,
    this.flPrimaryGtin,
    this.mtDivisibleOnProduct,
    this.dsTaxClassification,
    this.dsErpCodeDefault,
    this.dsErpCodeGtin,
    this.dsTradeItemErpCode,
    this.dsIntProductCode,
  });

  static PrdProduct fromMap(Map<String, dynamic> json) {
    return PrdProduct()
      ..idProduct = json['idProduct'] as int
      ..idProductType = json['idProductType'] as int
      ..dsProduct = json['dsProduct'] as String
      ..dsProductLong = json['dsProductLong'] as String
      ..dsProductNo = json['dsProductNo'] as String
      ..idUnitSmall = json['idUnitSmall'] as int
      ..idUnitSales = json['idUnitSales'] as int
      ..idMku = json['idMku'] as int
      ..idCategory1 = json['idCategory1'] as int
      ..idCategory2 = json['idCategory2'] as int
      ..idCategory3 = json['idCategory3'] as int
      ..idCategory4 = json['idCategory4'] as int
      ..idCategory5 = json['idCategory5'] as int
      ..idCategory6 = json['idCategory6'] as int
      ..idCategory7 = json['idCategory7'] as int
      ..idBusinessCategory1 = json['idBusinessCategory1'] as int
      ..idBusinessCategory2 = json['idBusinessCategory2'] as int
      ..idBusinessCategory3 = json['idBusinessCategory3'] as int
      ..idGroupCode1 = json['idGroupCode1'] as int
      ..idGroupCode2 = json['idGroupCode2'] as int
      ..idGroupCode3 = json['idGroupCode3'] as int
      ..idDiscountGroup = json['idDiscountGroup'] as int
      ..flActive = json['flActive'] == 1 ? true : false
      ..flReverseStock = json['flReverseStock'] == 1 ? true : false
      ..flEnabledForDirect = json['flEnabledForDirect'] == 1 ? true : false
      ..flEnabledForIndirect = json['flEnabledForIndirect'] == 1 ? true : false
      ..flPrimaryGtin = json['flPrimaryGtin'] == 1 ? true : false
      ..mtDivisibleOnProduct = json['mtDivisibleOnProduct'] as int
      ..dsTaxClassification = json['dsTaxClassification'] as String
      ..dsErpCodeDefault = json['dsErpCodeDefault'] as String
      ..dsErpCodeGtin = json['dsErpCodeGtin'] as String
      ..dsTradeItemErpCode = json['dsTradeItemErpCode'] as String
      ..dsIntProductCode = json['dsIntProductCode'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProduct': idProduct,
        'idProductType': idProductType,
        'dsProduct': dsProduct,
        'dsProductLong': dsProductLong,
        'dsProductNo': dsProductNo,
        'idUnitSmall': idUnitSmall,
        'idUnitSales': idUnitSales,
        'idMku': idMku,
        'idCategory1': idCategory1,
        'idCategory2': idCategory2,
        'idCategory3': idCategory3,
        'idCategory4': idCategory4,
        'idCategory5': idCategory5,
        'idCategory6': idCategory6,
        'idCategory7': idCategory7,
        'idBusinessCategory1': idBusinessCategory1,
        'idBusinessCategory2': idBusinessCategory2,
        'idBusinessCategory3': idBusinessCategory3,
        'idGroupCode1': idGroupCode1,
        'idGroupCode2': idGroupCode2,
        'idGroupCode3': idGroupCode3,
        'idDiscountGroup': idDiscountGroup,
        'flActive': flActive,
        'flReverseStock': flReverseStock,
        'flEnabledForDirect': flEnabledForDirect,
        'flEnabledForIndirect': flEnabledForIndirect,
        'flPrimaryGtin': flPrimaryGtin,
        'mtDivisibleOnProduct': mtDivisibleOnProduct,
        'dsTaxClassification': dsTaxClassification,
        'dsErpCodeDefault': dsErpCodeDefault,
        'dsErpCodeGtin': dsErpCodeGtin,
        'dsTradeItemErpCode': dsTradeItemErpCode,
        'dsIntProductCode': dsIntProductCode,
      };
}