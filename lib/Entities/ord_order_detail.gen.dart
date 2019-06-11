class OrdOrderDetail {
  int idOrderDetail;
  int idOrder;
  int idOrderDetailType;
  int mtSequence;
  int idProduct;
  int idRecipeProduction;
  int idUnit;
  int mtQuantity;
  int mtQuantityShipped;
  int mtQuantityBilled;
  int mtPriceUnit;
  int mtPriceUnitWithVat;
  int mtPriceUnitSpd;
  int mtPriceUnitSpdWithVat;
  int mtPriceGross;
  int mtPriceGrossWithVat;
  int mtPriceGrossSpd;
  int mtPriceGrossSpdWithVat;
  int mtDiscountPromotion;
  int mtDiscountPromotionWithVat;
  int mtDiscountCustomerRate;
  int mtDiscountCustomer;
  int mtDiscountCustomerWithVat;
  int mtDiscountTotal;
  int mtDiscountTotalWithVat;
  int mtPriceNet;
  int mtTaxRate;
  int mtTaxAmount;
  int mtTaxAmountSpd;
  int mtWeightNet;
  int mtWeightGross;
  int idCurrency;
  String dsProcessNo;
  int idOrderDetailStatus;
  int idDetailCancelReason;
  int idReturnReason;
  String dsPromoInfo;
  String dsNote;
  bool valid;
  String dsUniqueKey;
  int vrIdProductType;
  String vrDsProductNo;
  String vrDsProduct;
  String vrDsReturnReason;
  int vrMtQuantitySmall;
  
  OrdOrderDetail({
    this.idOrderDetail,
    this.idOrder,
    this.idOrderDetailType,
    this.mtSequence,
    this.idProduct,
    this.idRecipeProduction,
    this.idUnit,
    this.mtQuantity,
    this.mtQuantityShipped,
    this.mtQuantityBilled,
    this.mtPriceUnit,
    this.mtPriceUnitWithVat,
    this.mtPriceUnitSpd,
    this.mtPriceUnitSpdWithVat,
    this.mtPriceGross,
    this.mtPriceGrossWithVat,
    this.mtPriceGrossSpd,
    this.mtPriceGrossSpdWithVat,
    this.mtDiscountPromotion,
    this.mtDiscountPromotionWithVat,
    this.mtDiscountCustomerRate,
    this.mtDiscountCustomer,
    this.mtDiscountCustomerWithVat,
    this.mtDiscountTotal,
    this.mtDiscountTotalWithVat,
    this.mtPriceNet,
    this.mtTaxRate,
    this.mtTaxAmount,
    this.mtTaxAmountSpd,
    this.mtWeightNet,
    this.mtWeightGross,
    this.idCurrency,
    this.dsProcessNo,
    this.idOrderDetailStatus,
    this.idDetailCancelReason,
    this.idReturnReason,
    this.dsPromoInfo,
    this.dsNote,
    this.valid,
    this.dsUniqueKey,
    this.vrIdProductType,
    this.vrDsProductNo,
    this.vrDsProduct,
    this.vrDsReturnReason,
    this.vrMtQuantitySmall,
  });

  static OrdOrderDetail fromMap(Map<String, dynamic> json) {
    return OrdOrderDetail()
      ..idOrderDetail = json['idOrderDetail'] as int
      ..idOrder = json['idOrder'] as int
      ..idOrderDetailType = json['idOrderDetailType'] as int
      ..mtSequence = json['mtSequence'] as int
      ..idProduct = json['idProduct'] as int
      ..idRecipeProduction = json['idRecipeProduction'] as int
      ..idUnit = json['idUnit'] as int
      ..mtQuantity = json['mtQuantity'] as int
      ..mtQuantityShipped = json['mtQuantityShipped'] as int
      ..mtQuantityBilled = json['mtQuantityBilled'] as int
      ..mtPriceUnit = json['mtPriceUnit'] as int
      ..mtPriceUnitWithVat = json['mtPriceUnitWithVat'] as int
      ..mtPriceUnitSpd = json['mtPriceUnitSpd'] as int
      ..mtPriceUnitSpdWithVat = json['mtPriceUnitSpdWithVat'] as int
      ..mtPriceGross = json['mtPriceGross'] as int
      ..mtPriceGrossWithVat = json['mtPriceGrossWithVat'] as int
      ..mtPriceGrossSpd = json['mtPriceGrossSpd'] as int
      ..mtPriceGrossSpdWithVat = json['mtPriceGrossSpdWithVat'] as int
      ..mtDiscountPromotion = json['mtDiscountPromotion'] as int
      ..mtDiscountPromotionWithVat = json['mtDiscountPromotionWithVat'] as int
      ..mtDiscountCustomerRate = json['mtDiscountCustomerRate'] as int
      ..mtDiscountCustomer = json['mtDiscountCustomer'] as int
      ..mtDiscountCustomerWithVat = json['mtDiscountCustomerWithVat'] as int
      ..mtDiscountTotal = json['mtDiscountTotal'] as int
      ..mtDiscountTotalWithVat = json['mtDiscountTotalWithVat'] as int
      ..mtPriceNet = json['mtPriceNet'] as int
      ..mtTaxRate = json['mtTaxRate'] as int
      ..mtTaxAmount = json['mtTaxAmount'] as int
      ..mtTaxAmountSpd = json['mtTaxAmountSpd'] as int
      ..mtWeightNet = json['mtWeightNet'] as int
      ..mtWeightGross = json['mtWeightGross'] as int
      ..idCurrency = json['idCurrency'] as int
      ..dsProcessNo = json['dsProcessNo'] as String
      ..idOrderDetailStatus = json['idOrderDetailStatus'] as int
      ..idDetailCancelReason = json['idDetailCancelReason'] as int
      ..idReturnReason = json['idReturnReason'] as int
      ..dsPromoInfo = json['dsPromoInfo'] as String
      ..dsNote = json['dsNote'] as String
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrIdProductType = json['vrIdProductType'] as int
      ..vrDsProductNo = json['vrDsProductNo'] as String
      ..vrDsProduct = json['vrDsProduct'] as String
      ..vrDsReturnReason = json['vrDsReturnReason'] as String
      ..vrMtQuantitySmall = json['vrMtQuantitySmall'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrderDetail': idOrderDetail,
        'idOrder': idOrder,
        'idOrderDetailType': idOrderDetailType,
        'mtSequence': mtSequence,
        'idProduct': idProduct,
        'idRecipeProduction': idRecipeProduction,
        'idUnit': idUnit,
        'mtQuantity': mtQuantity,
        'mtQuantityShipped': mtQuantityShipped,
        'mtQuantityBilled': mtQuantityBilled,
        'mtPriceUnit': mtPriceUnit,
        'mtPriceUnitWithVat': mtPriceUnitWithVat,
        'mtPriceUnitSpd': mtPriceUnitSpd,
        'mtPriceUnitSpdWithVat': mtPriceUnitSpdWithVat,
        'mtPriceGross': mtPriceGross,
        'mtPriceGrossWithVat': mtPriceGrossWithVat,
        'mtPriceGrossSpd': mtPriceGrossSpd,
        'mtPriceGrossSpdWithVat': mtPriceGrossSpdWithVat,
        'mtDiscountPromotion': mtDiscountPromotion,
        'mtDiscountPromotionWithVat': mtDiscountPromotionWithVat,
        'mtDiscountCustomerRate': mtDiscountCustomerRate,
        'mtDiscountCustomer': mtDiscountCustomer,
        'mtDiscountCustomerWithVat': mtDiscountCustomerWithVat,
        'mtDiscountTotal': mtDiscountTotal,
        'mtDiscountTotalWithVat': mtDiscountTotalWithVat,
        'mtPriceNet': mtPriceNet,
        'mtTaxRate': mtTaxRate,
        'mtTaxAmount': mtTaxAmount,
        'mtTaxAmountSpd': mtTaxAmountSpd,
        'mtWeightNet': mtWeightNet,
        'mtWeightGross': mtWeightGross,
        'idCurrency': idCurrency,
        'dsProcessNo': dsProcessNo,
        'idOrderDetailStatus': idOrderDetailStatus,
        'idDetailCancelReason': idDetailCancelReason,
        'idReturnReason': idReturnReason,
        'dsPromoInfo': dsPromoInfo,
        'dsNote': dsNote,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
        'vrIdProductType': vrIdProductType,
        'vrDsProductNo': vrDsProductNo,
        'vrDsProduct': vrDsProduct,
        'vrDsReturnReason': vrDsReturnReason,
        'vrMtQuantitySmall': vrMtQuantitySmall,
      };
}