
import 'package:database_access_layer/entity/mem/audit_problem.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class AuditProblem extends AuditProblemAbstract{
  int idProblem;
  String dsProblem;
  int flAutomatic;
  
  AuditProblem({
    this.idProblem,
    this.dsProblem,
    this.flAutomatic,
  });

  static AuditProblem fromMap(Map<String, dynamic> json) {
    return AuditProblem()
      ..idProblem = json['idProblem'] as int
      ..dsProblem = json['dsProblem'] as String
      ..flAutomatic = json['flAutomatic'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProblem': idProblem,
        'dsProblem': dsProblem,
        'flAutomatic': flAutomatic,
      };
}