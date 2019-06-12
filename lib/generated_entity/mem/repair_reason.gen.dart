
import 'package:database_access_layer/entity/mem/repair_reason.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class RepairReason extends RepairReasonAbstract{
  int idRepairReason;
  String dsRepairReason;
  
  RepairReason({
    this.idRepairReason,
    this.dsRepairReason,
  });

  static RepairReason fromMap(Map<String, dynamic> json) {
    return RepairReason()
      ..idRepairReason = json['idRepairReason'] as int
      ..dsRepairReason = json['dsRepairReason'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRepairReason': idRepairReason,
        'dsRepairReason': dsRepairReason,
      };
}