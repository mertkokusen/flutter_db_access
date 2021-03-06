
import 'package:database_access_layer/entity/acc/cash_order_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CashOrderDetail extends CashOrderDetailAbstract{
  int idCashOrderDetail;
  int idCashOrder;
  bool valid;
  int idSalesOrg;
  String dsDocumentNumber;
  int mtPreviousAmount;
  int mtPreviousUnclosedAmount;
  int mtPaidAmount;
  String dsUniqueKey;
  String dsInvoiceNumber;
  
  CashOrderDetail({
    this.idCashOrderDetail,
    this.idCashOrder,
    this.valid,
    this.idSalesOrg,
    this.dsDocumentNumber,
    this.mtPreviousAmount,
    this.mtPreviousUnclosedAmount,
    this.mtPaidAmount,
    this.dsUniqueKey,
    this.dsInvoiceNumber,
  });

  static CashOrderDetail fromMap(Map<String, dynamic> json) {
    return CashOrderDetail()
      ..idCashOrderDetail = json['idCashOrderDetail'] as int
      ..idCashOrder = json['idCashOrder'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idSalesOrg = json['idSalesOrg'] as int
      ..dsDocumentNumber = json['dsDocumentNumber'] as String
      ..mtPreviousAmount = json['mtPreviousAmount'] as int
      ..mtPreviousUnclosedAmount = json['mtPreviousUnclosedAmount'] as int
      ..mtPaidAmount = json['mtPaidAmount'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsInvoiceNumber = json['dsInvoiceNumber'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashOrderDetail': idCashOrderDetail,
        'idCashOrder': idCashOrder,
        'valid': valid,
        'idSalesOrg': idSalesOrg,
        'dsDocumentNumber': dsDocumentNumber,
        'mtPreviousAmount': mtPreviousAmount,
        'mtPreviousUnclosedAmount': mtPreviousUnclosedAmount,
        'mtPaidAmount': mtPaidAmount,
        'dsUniqueKey': dsUniqueKey,
        'dsInvoiceNumber': dsInvoiceNumber,
      };
}