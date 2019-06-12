
import 'package:database_access_layer/entity/cus/visit_plan.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class VisitPlan extends VisitPlanAbstract{
  int idVisitPlan;
  int idSalesOrg;
  int idRoute;
  int idAgent;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  
  VisitPlan({
    this.idVisitPlan,
    this.idSalesOrg,
    this.idRoute,
    this.idAgent,
    this.dtValidFrom,
    this.dtValidTo,
  });

  static VisitPlan fromMap(Map<String, dynamic> json) {
    return VisitPlan()
      ..idVisitPlan = json['idVisitPlan'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idRoute = json['idRoute'] as int
      ..idAgent = json['idAgent'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitPlan': idVisitPlan,
        'idSalesOrg': idSalesOrg,
        'idRoute': idRoute,
        'idAgent': idAgent,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
      };
}