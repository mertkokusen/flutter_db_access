class PrmPromotionDiscount {
  int idPromotionDiscount;
  int idPromotion;
  int idDiscountGroup;
  int mtDiscount;
  String dsDiscount;
  int mtCompanyShare;
  
  PrmPromotionDiscount({
    this.idPromotionDiscount,
    this.idPromotion,
    this.idDiscountGroup,
    this.mtDiscount,
    this.dsDiscount,
    this.mtCompanyShare,
  });

  static PrmPromotionDiscount fromMap(Map<String, dynamic> json) {
    return PrmPromotionDiscount()
      ..idPromotionDiscount = json['idPromotionDiscount'] as int
      ..idPromotion = json['idPromotion'] as int
      ..idDiscountGroup = json['idDiscountGroup'] as int
      ..mtDiscount = json['mtDiscount'] as int
      ..dsDiscount = json['dsDiscount'] as String
      ..mtCompanyShare = json['mtCompanyShare'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionDiscount': idPromotionDiscount,
        'idPromotion': idPromotion,
        'idDiscountGroup': idDiscountGroup,
        'mtDiscount': mtDiscount,
        'dsDiscount': dsDiscount,
        'mtCompanyShare': mtCompanyShare,
      };
}