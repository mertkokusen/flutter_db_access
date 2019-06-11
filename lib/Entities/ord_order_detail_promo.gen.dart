class OrdOrderDetailPromo {
  int idOrderDetailPromo;
  int idOrderDetail;
  int idOrder;
  int idPromotion;
  int idPromotionRule;
  int idPromotionReward;
  int mtPromotionRate;
  int mtPromotionAmount;
  int mtPromotionAmountWithVat;
  int mtCompanyShare;
  int mtMaxDiscountRate;
  bool flFree;
  bool flMoneyDiscount;
  int mtTotalMoneyDiscount;
  bool valid;
  String dsUniqueKey;
  
  OrdOrderDetailPromo({
    this.idOrderDetailPromo,
    this.idOrderDetail,
    this.idOrder,
    this.idPromotion,
    this.idPromotionRule,
    this.idPromotionReward,
    this.mtPromotionRate,
    this.mtPromotionAmount,
    this.mtPromotionAmountWithVat,
    this.mtCompanyShare,
    this.mtMaxDiscountRate,
    this.flFree,
    this.flMoneyDiscount,
    this.mtTotalMoneyDiscount,
    this.valid,
    this.dsUniqueKey,
  });

  static OrdOrderDetailPromo fromMap(Map<String, dynamic> json) {
    return OrdOrderDetailPromo()
      ..idOrderDetailPromo = json['idOrderDetailPromo'] as int
      ..idOrderDetail = json['idOrderDetail'] as int
      ..idOrder = json['idOrder'] as int
      ..idPromotion = json['idPromotion'] as int
      ..idPromotionRule = json['idPromotionRule'] as int
      ..idPromotionReward = json['idPromotionReward'] as int
      ..mtPromotionRate = json['mtPromotionRate'] as int
      ..mtPromotionAmount = json['mtPromotionAmount'] as int
      ..mtPromotionAmountWithVat = json['mtPromotionAmountWithVat'] as int
      ..mtCompanyShare = json['mtCompanyShare'] as int
      ..mtMaxDiscountRate = json['mtMaxDiscountRate'] as int
      ..flFree = json['flFree'] == 1 ? true : false
      ..flMoneyDiscount = json['flMoneyDiscount'] == 1 ? true : false
      ..mtTotalMoneyDiscount = json['mtTotalMoneyDiscount'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrderDetailPromo': idOrderDetailPromo,
        'idOrderDetail': idOrderDetail,
        'idOrder': idOrder,
        'idPromotion': idPromotion,
        'idPromotionRule': idPromotionRule,
        'idPromotionReward': idPromotionReward,
        'mtPromotionRate': mtPromotionRate,
        'mtPromotionAmount': mtPromotionAmount,
        'mtPromotionAmountWithVat': mtPromotionAmountWithVat,
        'mtCompanyShare': mtCompanyShare,
        'mtMaxDiscountRate': mtMaxDiscountRate,
        'flFree': flFree,
        'flMoneyDiscount': flMoneyDiscount,
        'mtTotalMoneyDiscount': mtTotalMoneyDiscount,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
      };
}