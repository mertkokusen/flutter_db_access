
import 'package:database_access_layer/entity/cus/visit_list_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class VisitListDetail extends VisitListDetailAbstract{
  int idVisitListDetail;
  int idVisitList;
  int idCustomer;
  bool flOutOfPlan;
  int idVisitType;
  int mtSeq;
  
  VisitListDetail({
    this.idVisitListDetail,
    this.idVisitList,
    this.idCustomer,
    this.flOutOfPlan,
    this.idVisitType,
    this.mtSeq,
  });

  static VisitListDetail fromMap(Map<String, dynamic> json) {
    return VisitListDetail()
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