class PrmPromotionType {
  int idPromotionType;
  String dsPromotionType;
  int idApplicationMode;
  String dsBlockedPromotionTypes;
  bool flMultiple;
  bool flConstant;
  int mtApplicationOrder;
  
  PrmPromotionType({
    this.idPromotionType,
    this.dsPromotionType,
    this.idApplicationMode,
    this.dsBlockedPromotionTypes,
    this.flMultiple,
    this.flConstant,
    this.mtApplicationOrder,
  });

  static PrmPromotionType fromMap(Map<String, dynamic> json) {
    return PrmPromotionType()
      ..idPromotionType = json['idPromotionType'] as int
      ..dsPromotionType = json['dsPromotionType'] as String
      ..idApplicationMode = json['idApplicationMode'] as int
      ..dsBlockedPromotionTypes = json['dsBlockedPromotionTypes'] as String
      ..flMultiple = json['flMultiple'] == 1 ? true : false
      ..flConstant = json['flConstant'] == 1 ? true : false
      ..mtApplicationOrder = json['mtApplicationOrder'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotionType': idPromotionType,
        'dsPromotionType': dsPromotionType,
        'idApplicationMode': idApplicationMode,
        'dsBlockedPromotionTypes': dsBlockedPromotionTypes,
        'flMultiple': flMultiple,
        'flConstant': flConstant,
        'mtApplicationOrder': mtApplicationOrder,
      };
}