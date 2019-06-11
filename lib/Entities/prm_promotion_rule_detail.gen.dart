class PrmPromotionRuleDetail {
  int idPromotionRuleDetail;
  int idPromotionRule;
  int idPromotion;
  int idProductGroup;
  int idProduct;
  int mtAmountFrom;
  int mtAmountTo;
  int idUnit;
  int idCurrency;
  
  PrmPromotionRuleDetail({
    this.idPromotionRuleDetail,
    this.idPromotionRule,
    this.idPromotion,
    this.idProductGroup,
    this.idProduct,
    this.mtAmountFrom,
    this.mtAmountTo,
    this.idUnit,
    this.idCurrency,
  });

  static PrmPromotionRuleDetail fromMap(Map<String, dynamic> json) {
    return PrmPromotionRuleDetail()
      ..idPromotionRuleDetail = json['idPromotionRuleDetail'] as int
      ..idPromotionRule = json['idPromotionRule'] as int
      ..idPromotion = json['idPromotion'] as int
      ..idProductGroup = json['idProductGroup'] as int
      ..idProduct = json['idProduct'] as int
      ..mtAmountFrom = json['mtAmountFrom'] as int
      ..mtAmountTo = json['mtAmountTo'] as int
      ..idUnit = json['idUnit'] as int
      ..idCurrency = json['idCurrency'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionRuleDetail': idPromotionRuleDetail,
        'idPromotionRule': idPromotionRule,
        'idPromotion': idPromotion,
        'idProductGroup': idProductGroup,
        'idProduct': idProduct,
        'mtAmountFrom': mtAmountFrom,
        'mtAmountTo': mtAmountTo,
        'idUnit': idUnit,
        'idCurrency': idCurrency,
      };
}