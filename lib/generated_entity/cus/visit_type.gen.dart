
import 'package:database_access_layer/entity/cus/visit_type.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class VisitType extends VisitTypeAbstract{
  int idVisitType;
  String dsVisitType;
  String dsErpCode;
  bool flOrderMandatory;
  bool flAuditVisit;
  bool flCertificationVisit;
  bool flWorkwithVisit;
  
  VisitType({
    this.idVisitType,
    this.dsVisitType,
    this.dsErpCode,
    this.flOrderMandatory,
    this.flAuditVisit,
    this.flCertificationVisit,
    this.flWorkwithVisit,
  });

  static VisitType fromMap(Map<String, dynamic> json) {
    return VisitType()
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