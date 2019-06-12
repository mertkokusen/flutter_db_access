
import 'package:database_access_layer/entity/cus/customer_list_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CustomerListDetail extends CustomerListDetailAbstract{
  int idCustomerListDetail;
  int idCustomerList;
  int idCustomer;
  
  CustomerListDetail({
    this.idCustomerListDetail,
    this.idCustomerList,
    this.idCustomer,
  });

  static CustomerListDetail fromMap(Map<String, dynamic> json) {
    return CustomerListDetail()
      ..idCustomerListDetail = json['idCustomerListDetail'] as int
      ..idCustomerList = json['idCustomerList'] as int
      ..idCustomer = json['idCustomer'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerListDetail': idCustomerListDetail,
        'idCustomerList': idCustomerList,
        'idCustomer': idCustomer,
      };
}