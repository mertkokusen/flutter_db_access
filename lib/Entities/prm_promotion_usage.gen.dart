class PrmPromotionUsage {
  int idPromotionUsage;
  int idPromotion;
  int idCustomer;
  int mtUsage;
  
  PrmPromotionUsage({
    this.idPromotionUsage,
    this.idPromotion,
    this.idCustomer,
    this.mtUsage,
  });

  static PrmPromotionUsage fromMap(Map<String, dynamic> json) {
    return PrmPromotionUsage()
      ..idPromotionUsage = json['idPromotionUsage'] as int
      ..idPromotion = json['idPromotion'] as int
      ..idCustomer = json['idCustomer'] as int
      ..mtUsage = json['mtUsage'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionUsage': idPromotionUsage,
        'idPromotion': idPromotion,
        'idCustomer': idCustomer,
        'mtUsage': mtUsage,
      };
}