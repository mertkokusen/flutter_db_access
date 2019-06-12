
import 'package:database_access_layer/entity/acc/cash_order.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CashOrder extends CashOrderAbstract{
  int idCashOrder;
  DateTime dtCashOrder;
  String dsDocumentNumber;
  int idCashOrderStatus;
  int idCashOrderOwner;
  int mtAmountReceived;
  String dsUniqueKey;
  bool vrFlSent;
  int idAgent;
  DateTime vrDtCashOrder;
  
  CashOrder({
    this.idCashOrder,
    this.dtCashOrder,
    this.dsDocumentNumber,
    this.idCashOrderStatus,
    this.idCashOrderOwner,
    this.mtAmountReceived,
    this.dsUniqueKey,
    this.vrFlSent,
    this.idAgent,
    this.vrDtCashOrder,
  });

  static CashOrder fromMap(Map<String, dynamic> json) {
    return CashOrder()
      ..idCashOrder = json['idCashOrder'] as int
      ..dtCashOrder = json['dtCashOrder'] == null ? null : DateTime.parse(json['dtCashOrder'] as String)
      ..dsDocumentNumber = json['dsDocumentNumber'] as String
      ..idCashOrderStatus = json['idCashOrderStatus'] as int
      ..idCashOrderOwner = json['idCashOrderOwner'] as int
      ..mtAmountReceived = json['mtAmountReceived'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..idAgent = json['idAgent'] as int
      ..vrDtCashOrder = json['vrDtCashOrder'] == null ? null : DateTime.parse(json['vrDtCashOrder'] as String)
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashOrder': idCashOrder,
        'dtCashOrder': dtCashOrder?.toIso8601String(),
        'dsDocumentNumber': dsDocumentNumber,
        'idCashOrderStatus': idCashOrderStatus,
        'idCashOrderOwner': idCashOrderOwner,
        'mtAmountReceived': mtAmountReceived,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'idAgent': idAgent,
        'vrDtCashOrder': vrDtCashOrder?.toIso8601String(),
      };
}