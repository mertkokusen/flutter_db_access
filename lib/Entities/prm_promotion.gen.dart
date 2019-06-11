class PrmPromotion {
  int idPromotion;
  String dsPromotion;
  String dsPromotionNo;
  int idPromotionType;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  DateTime dtDeliveryDue;
  int idApplicationCondition;
  int mtUsageLimit;
  String dsNote;
  bool flErp;
  String dsErpCode;
  
  PrmPromotion({
    this.idPromotion,
    this.dsPromotion,
    this.dsPromotionNo,
    this.idPromotionType,
    this.dtValidFrom,
    this.dtValidTo,
    this.dtDeliveryDue,
    this.idApplicationCondition,
    this.mtUsageLimit,
    this.dsNote,
    this.flErp,
    this.dsErpCode,
  });

  static PrmPromotion fromMap(Map<String, dynamic> json) {
    return PrmPromotion()
      ..idPromotion = json['idPromotion'] as int
      ..dsPromotion = json['dsPromotion'] as String
      ..dsPromotionNo = json['dsPromotionNo'] as String
      ..idPromotionType = json['idPromotionType'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
      ..dtDeliveryDue = json['dtDeliveryDue'] as DateTime
      ..idApplicationCondition = json['idApplicationCondition'] as int
      ..mtUsageLimit = json['mtUsageLimit'] as int
      ..dsNote = json['dsNote'] as String
      ..flErp = json['flErp'] == 1 ? true : false
      ..dsErpCode = json['dsErpCode'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPromotion': idPromotion,
        'dsPromotion': dsPromotion,
        'dsPromotionNo': dsPromotionNo,
        'idPromotionType': idPromotionType,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
        'dtDeliveryDue': dtDeliveryDue,
        'idApplicationCondition': idApplicationCondition,
        'mtUsageLimit': mtUsageLimit,
        'dsNote': dsNote,
        'flErp': flErp,
        'dsErpCode': dsErpCode,
      };
}