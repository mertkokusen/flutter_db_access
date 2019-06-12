
import 'package:database_access_layer/entity/acc/cash_order_owner.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CashOrderOwner extends CashOrderOwnerAbstract{
  int idCashOrderOwner;
  String dsCashOrderOwner;
  
  CashOrderOwner({
    this.idCashOrderOwner,
    this.dsCashOrderOwner,
  });

  static CashOrderOwner fromMap(Map<String, dynamic> json) {
    return CashOrderOwner()
      ..idCashOrderOwner = json['idCashOrderOwner'] as int
      ..dsCashOrderOwner = json['dsCashOrderOwner'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashOrderOwner': idCashOrderOwner,
        'dsCashOrderOwner': dsCashOrderOwner,
      };
}