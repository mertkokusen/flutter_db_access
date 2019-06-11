class OrdOrder {
  int idOrder;
  DateTime dtOrder;
  DateTime dtShipment;
  int idOrderType;
  int idOrderStatus;
  int idCustomer;
  int idCustomerDelivery;
  int idAddressDelivery;
  int idDealer;
  int idRoute;
  int idSalesOrg;
  int idAgent;
  int idVisit;
  int idWarehouse;
  int idPaymentType;
  int idCustomerAgreement;
  int idCustomerDiscount;
  int idContract;
  int idContractCustomer;
  String dsNote;
  String dsNote2;
  int mtAmountGross;
  int mtAmountGrossWithVat;
  int mtAmountGrossSpd;
  int mtAmountGrossSpdWithVat;
  int mtDiscountCustomer;
  int mtDiscountCustomerWithVat;
  int mtDiscountPromotion;
  int mtDiscountPromotionWithVat;
  int mtDiscountTotal;
  int mtDiscountTotalWithVat;
  int mtNetAmount;
  int mtTaxAmount;
  int mtTaxAmountSpd;
  int mtTotalAmount;
  int mtTotalAmountSpd;
  int idGroupCode1;
  int idGroupCode2;
  int idGroupCode3;
  int idGroupCode4;
  int idGroupCode5;
  bool flDiscountNotSpread;
  bool flPostponed;
  bool flUnitPriceIncludeTax;
  int idAsmPushPromotion;
  String dsUniqueKey;
  bool vrFlSent;
  
  OrdOrder({
    this.idOrder,
    this.dtOrder,
    this.dtShipment,
    this.idOrderType,
    this.idOrderStatus,
    this.idCustomer,
    this.idCustomerDelivery,
    this.idAddressDelivery,
    this.idDealer,
    this.idRoute,
    this.idSalesOrg,
    this.idAgent,
    this.idVisit,
    this.idWarehouse,
    this.idPaymentType,
    this.idCustomerAgreement,
    this.idCustomerDiscount,
    this.idContract,
    this.idContractCustomer,
    this.dsNote,
    this.dsNote2,
    this.mtAmountGross,
    this.mtAmountGrossWithVat,
    this.mtAmountGrossSpd,
    this.mtAmountGrossSpdWithVat,
    this.mtDiscountCustomer,
    this.mtDiscountCustomerWithVat,
    this.mtDiscountPromotion,
    this.mtDiscountPromotionWithVat,
    this.mtDiscountTotal,
    this.mtDiscountTotalWithVat,
    this.mtNetAmount,
    this.mtTaxAmount,
    this.mtTaxAmountSpd,
    this.mtTotalAmount,
    this.mtTotalAmountSpd,
    this.idGroupCode1,
    this.idGroupCode2,
    this.idGroupCode3,
    this.idGroupCode4,
    this.idGroupCode5,
    this.flDiscountNotSpread,
    this.flPostponed,
    this.flUnitPriceIncludeTax,
    this.idAsmPushPromotion,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static OrdOrder fromMap(Map<String, dynamic> json) {
    return OrdOrder()
      ..idOrder = json['idOrder'] as int
      ..dtOrder = json['dtOrder'] == null ? null : DateTime.parse(json['dtOrder'] as String)
      ..dtShipment = json['dtShipment'] == null ? null : DateTime.parse(json['dtShipment'] as String)
      ..idOrderType = json['idOrderType'] as int
      ..idOrderStatus = json['idOrderStatus'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idCustomerDelivery = json['idCustomerDelivery'] as int
      ..idAddressDelivery = json['idAddressDelivery'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idAgent = json['idAgent'] as int
      ..idVisit = json['idVisit'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idPaymentType = json['idPaymentType'] as int
      ..idCustomerAgreement = json['idCustomerAgreement'] as int
      ..idCustomerDiscount = json['idCustomerDiscount'] as int
      ..idContract = json['idContract'] as int
      ..idContractCustomer = json['idContractCustomer'] as int
      ..dsNote = json['dsNote'] as String
      ..dsNote2 = json['dsNote2'] as String
      ..mtAmountGross = json['mtAmountGross'] as int
      ..mtAmountGrossWithVat = json['mtAmountGrossWithVat'] as int
      ..mtAmountGrossSpd = json['mtAmountGrossSpd'] as int
      ..mtAmountGrossSpdWithVat = json['mtAmountGrossSpdWithVat'] as int
      ..mtDiscountCustomer = json['mtDiscountCustomer'] as int
      ..mtDiscountCustomerWithVat = json['mtDiscountCustomerWithVat'] as int
      ..mtDiscountPromotion = json['mtDiscountPromotion'] as int
      ..mtDiscountPromotionWithVat = json['mtDiscountPromotionWithVat'] as int
      ..mtDiscountTotal = json['mtDiscountTotal'] as int
      ..mtDiscountTotalWithVat = json['mtDiscountTotalWithVat'] as int
      ..mtNetAmount = json['mtNetAmount'] as int
      ..mtTaxAmount = json['mtTaxAmount'] as int
      ..mtTaxAmountSpd = json['mtTaxAmountSpd'] as int
      ..mtTotalAmount = json['mtTotalAmount'] as int
      ..mtTotalAmountSpd = json['mtTotalAmountSpd'] as int
      ..idGroupCode1 = json['idGroupCode1'] as int
      ..idGroupCode2 = json['idGroupCode2'] as int
      ..idGroupCode3 = json['idGroupCode3'] as int
      ..idGroupCode4 = json['idGroupCode4'] as int
      ..idGroupCode5 = json['idGroupCode5'] as int
      ..flDiscountNotSpread = json['flDiscountNotSpread'] == 1 ? true : false
      ..flPostponed = json['flPostponed'] == 1 ? true : false
      ..flUnitPriceIncludeTax = json['flUnitPriceIncludeTax'] == 1 ? true : false
      ..idAsmPushPromotion = json['idAsmPushPromotion'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrder': idOrder,
        'dtOrder': dtOrder?.toIso8601String(),
        'dtShipment': dtShipment?.toIso8601String(),
        'idOrderType': idOrderType,
        'idOrderStatus': idOrderStatus,
        'idCustomer': idCustomer,
        'idCustomerDelivery': idCustomerDelivery,
        'idAddressDelivery': idAddressDelivery,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idSalesOrg': idSalesOrg,
        'idAgent': idAgent,
        'idVisit': idVisit,
        'idWarehouse': idWarehouse,
        'idPaymentType': idPaymentType,
        'idCustomerAgreement': idCustomerAgreement,
        'idCustomerDiscount': idCustomerDiscount,
        'idContract': idContract,
        'idContractCustomer': idContractCustomer,
        'dsNote': dsNote,
        'dsNote2': dsNote2,
        'mtAmountGross': mtAmountGross,
        'mtAmountGrossWithVat': mtAmountGrossWithVat,
        'mtAmountGrossSpd': mtAmountGrossSpd,
        'mtAmountGrossSpdWithVat': mtAmountGrossSpdWithVat,
        'mtDiscountCustomer': mtDiscountCustomer,
        'mtDiscountCustomerWithVat': mtDiscountCustomerWithVat,
        'mtDiscountPromotion': mtDiscountPromotion,
        'mtDiscountPromotionWithVat': mtDiscountPromotionWithVat,
        'mtDiscountTotal': mtDiscountTotal,
        'mtDiscountTotalWithVat': mtDiscountTotalWithVat,
        'mtNetAmount': mtNetAmount,
        'mtTaxAmount': mtTaxAmount,
        'mtTaxAmountSpd': mtTaxAmountSpd,
        'mtTotalAmount': mtTotalAmount,
        'mtTotalAmountSpd': mtTotalAmountSpd,
        'idGroupCode1': idGroupCode1,
        'idGroupCode2': idGroupCode2,
        'idGroupCode3': idGroupCode3,
        'idGroupCode4': idGroupCode4,
        'idGroupCode5': idGroupCode5,
        'flDiscountNotSpread': flDiscountNotSpread,
        'flPostponed': flPostponed,
        'flUnitPriceIncludeTax': flUnitPriceIncludeTax,
        'idAsmPushPromotion': idAsmPushPromotion,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}