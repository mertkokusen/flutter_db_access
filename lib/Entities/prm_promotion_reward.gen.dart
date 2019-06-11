class PrmPromotionReward {
  int idPromotionReward;
  int idPromotionRule;
  int idPromotion;
  int idProductGroup;
  int idProduct;
  int mtDiscount;
  int mtMaxDiscount;
  int idUnit;
  int mtFreeAmount;
  String dsParameter;
  int mtCompanyShare;
  int mtDiscountRewardPercent;
  int mtDiscountRewardAmount;
  
  PrmPromotionReward({
    this.idPromotionReward,
    this.idPromotionRule,
    this.idPromotion,
    this.idProductGroup,
    this.idProduct,
    this.mtDiscount,
    this.mtMaxDiscount,
    this.idUnit,
    this.mtFreeAmount,
    this.dsParameter,
    this.mtCompanyShare,
    this.mtDiscountRewardPercent,
    this.mtDiscountRewardAmount,
  });

  static PrmPromotionReward fromMap(Map<String, dynamic> json) {
    return PrmPromotionReward()
      ..idPromotionReward = json['idPromotionReward'] as int
      ..idPromotionRule = json['idPromotionRule'] as int
      ..idPromotion = json['idPromotion'] as int
      ..idProductGroup = json['idProductGroup'] as int
      ..idProduct = json['idProduct'] as int
      ..mtDiscount = json['mtDiscount'] as int
      ..mtMaxDiscount = json['mtMaxDiscount'] as int
      ..idUnit = json['idUnit'] as int
      ..mtFreeAmount = json['mtFreeAmount'] as int
      ..dsParameter = json['dsParameter'] as String
      ..mtCompanyShare = json['mtCompanyShare'] as int
      ..mtDiscountRewardPercent = json['mtDiscountRewardPercent'] as int
      ..mtDiscountRewardAmount = json['mtDiscountRewardAmount'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionReward': idPromotionReward,
        'idPromotionRule': idPromotionRule,
        'idPromotion': idPromotion,
        'idProductGroup': idProductGroup,
        'idProduct': idProduct,
        'mtDiscount': mtDiscount,
        'mtMaxDiscount': mtMaxDiscount,
        'idUnit': idUnit,
        'mtFreeAmount': mtFreeAmount,
        'dsParameter': dsParameter,
        'mtCompanyShare': mtCompanyShare,
        'mtDiscountRewardPercent': mtDiscountRewardPercent,
        'mtDiscountRewardAmount': mtDiscountRewardAmount,
      };
}