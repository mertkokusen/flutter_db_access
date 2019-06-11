class CusVisitListDetail {
  int idVisitListDetail;
  int idVisitList;
  int idCustomer;
  bool flOutOfPlan;
  int idVisitType;
  int mtSeq;
  
  CusVisitListDetail({
    this.idVisitListDetail,
    this.idVisitList,
    this.idCustomer,
    this.flOutOfPlan,
    this.idVisitType,
    this.mtSeq,
  });

  static CusVisitListDetail fromMap(Map<String, dynamic> json) {
    return CusVisitListDetail()
      ..idVisitListDetail = json['idVisitListDetail'] as int
      ..idVisitList = json['idVisitList'] as int
      ..idCustomer = json['idCustomer'] as int
      ..flOutOfPlan = json['flOutOfPlan'] == 1 ? true : false
      ..idVisitType = json['idVisitType'] as int
      ..mtSeq = json['mtSeq'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitListDetail': idVisitListDetail,
        'idVisitList': idVisitList,
        'idCustomer': idCustomer,
        'flOutOfPlan': flOutOfPlan,
        'idVisitType': idVisitType,
        'mtSeq': mtSeq,
      };
}