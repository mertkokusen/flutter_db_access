
import 'package:database_access_layer/entity/mem/audit.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class Audit extends AuditAbstract{
  int idAudit;
  DateTime dtAudit;
  int idAgent;
  int idDealer;
  int idRoute;
  int idCustomer;
  int idVisit;
  String dsComment;
  String dsUniqueKey;
  int vrFlSent;
  bool valid;
  
  Audit({
    this.idAudit,
    this.dtAudit,
    this.idAgent,
    this.idDealer,
    this.idRoute,
    this.idCustomer,
    this.idVisit,
    this.dsComment,
    this.dsUniqueKey,
    this.vrFlSent,
    this.valid,
  });

  static Audit fromMap(Map<String, dynamic> json) {
    return Audit()
      ..idAudit = json['idAudit'] as int
      ..dtAudit = json['dtAudit'] == null ? null : DateTime.parse(json['dtAudit'] as String)
      ..idAgent = json['idAgent'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisit = json['idVisit'] as int
      ..dsComment = json['dsComment'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] as int
      ..valid = json['valid'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAudit': idAudit,
        'dtAudit': dtAudit?.toIso8601String(),
        'idAgent': idAgent,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idVisit': idVisit,
        'dsComment': dsComment,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'valid': valid,
      };
}