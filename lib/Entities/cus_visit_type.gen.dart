class CusVisitType {
  int idVisitType;
  String dsVisitType;
  String dsErpCode;
  bool flOrderMandatory;
  bool flAuditVisit;
  bool flCertificationVisit;
  bool flWorkwithVisit;
  
  CusVisitType({
    this.idVisitType,
    this.dsVisitType,
    this.dsErpCode,
    this.flOrderMandatory,
    this.flAuditVisit,
    this.flCertificationVisit,
    this.flWorkwithVisit,
  });

  static CusVisitType fromMap(Map<String, dynamic> json) {
    return CusVisitType()
      ..idVisitType = json['idVisitType'] as int
      ..dsVisitType = json['dsVisitType'] as String
      ..dsErpCode = json['dsErpCode'] as String
      ..flOrderMandatory = json['flOrderMandatory'] == 1 ? true : false
      ..flAuditVisit = json['flAuditVisit'] == 1 ? true : false
      ..flCertificationVisit = json['flCertificationVisit'] == 1 ? true : false
      ..flWorkwithVisit = json['flWorkwithVisit'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitType': idVisitType,
        'dsVisitType': dsVisitType,
        'dsErpCode': dsErpCode,
        'flOrderMandatory': flOrderMandatory,
        'flAuditVisit': flAuditVisit,
        'flCertificationVisit': flCertificationVisit,
        'flWorkwithVisit': flWorkwithVisit,
      };
}