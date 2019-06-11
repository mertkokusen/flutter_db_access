class PrmPromotionRule {
  int idPromotionRule;
  int idPromotion;
  bool flProgressive;
  int mtMinAmount;
  int idMinAmountCurrency;
  int mtMinQuantity;
  int idMinQuantityUnit;
  int mtSequence;
  
  PrmPromotionRule({
    this.idPromotionRule,
    this.idPromotion,
    this.flProgressive,
    this.mtMinAmount,
    this.idMinAmountCurrency,
    this.mtMinQuantity,
    this.idMinQuantityUnit,
    this.mtSequence,
  });

  static PrmPromotionRule fromMap(Map<String, dynamic> json) {
    return PrmPromotionRule()
      ..idPromotionRule = json['idPromotionRule'] as int
      ..idPromotion = json['idPromotion'] as int
      ..flProgressive = json['flProgressive'] == 1 ? true : false
      ..mtMinAmount = json['mtMinAmount'] as int
      ..idMinAmountCurrency = json['idMinAmountCurrency'] as int
      ..mtMinQuantity = json['mtMinQuantity'] as int
      ..idMinQuantityUnit = json['idMinQuantityUnit'] as int
      ..mtSequence = json['mtSequence'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionRule': idPromotionRule,
        'idPromotion': idPromotion,
        'flProgressive': flProgressive,
        'mtMinAmount': mtMinAmount,
        'idMinAmountCurrency': idMinAmountCurrency,
        'mtMinQuantity': mtMinQuantity,
        'idMinQuantityUnit': idMinQuantityUnit,
        'mtSequence': mtSequence,
      };
}