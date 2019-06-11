class RepPromotion {
  int idPromotion;
  String dsPromotion;
  String dsPromotionNo;
  
  RepPromotion({
    this.idPromotion,
    this.dsPromotion,
    this.dsPromotionNo,
  });

  static RepPromotion fromMap(Map<String, dynamic> json) {
    return RepPromotion()
      ..idPromotion = json['idPromotion'] as int
      ..dsPromotion = json['dsPromotion'] as String
      ..dsPromotionNo = json['dsPromotionNo'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotion': idPromotion,
        'dsPromotion': dsPromotion,
        'dsPromotionNo': dsPromotionNo,
      };
}