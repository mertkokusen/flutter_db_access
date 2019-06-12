
import 'package:database_access_layer/entity/cus/customer_request_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CustomerRequestDetail extends CustomerRequestDetailAbstract{
  int idCustomerRequestDetail;
  int idCustomerRequest;
  int idRequestAttribute;
  String dsOldValue;
  String dsNewValue;
  String dsUniqueKey;
  bool vrFlSent;
  String dsUpdatedRecordUniqueKey;
  
  CustomerRequestDetail({
    this.idCustomerRequestDetail,
    this.idCustomerRequest,
    this.idRequestAttribute,
    this.dsOldValue,
    this.dsNewValue,
    this.dsUniqueKey,
    this.vrFlSent,
    this.dsUpdatedRecordUniqueKey,
  });

  static CustomerRequestDetail fromMap(Map<String, dynamic> json) {
    return CustomerRequestDetail()
      ..idCustomerRequestDetail = json['idCustomerRequestDetail'] as int
      ..idCustomerRequest = json['idCustomerRequest'] as int
      ..idRequestAttribute = json['idRequestAttribute'] as int
      ..dsOldValue = json['dsOldValue'] as String
      ..dsNewValue = json['dsNewValue'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..dsUpdatedRecordUniqueKey = json['dsUpdatedRecordUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerRequestDetail': idCustomerRequestDetail,
        'idCustomerRequest': idCustomerRequest,
        'idRequestAttribute': idRequestAttribute,
        'dsOldValue': dsOldValue,
        'dsNewValue': dsNewValue,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'dsUpdatedRecordUniqueKey': dsUpdatedRecordUniqueKey,
      };
}