
import 'package:database_access_layer/entity/cus/customer_sales_unit_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CustomerSalesUnitDetail extends CustomerSalesUnitDetailAbstract{
  int idCustomerSalesUnitDetail;
  int idCustomerSalesUnit;
  int idUnit;
  
  CustomerSalesUnitDetail({
    this.idCustomerSalesUnitDetail,
    this.idCustomerSalesUnit,
    this.idUnit,
  });

  static CustomerSalesUnitDetail fromMap(Map<String, dynamic> json) {
    return CustomerSalesUnitDetail()
      ..idCustomerSalesUnitDetail = json['idCustomerSalesUnitDetail'] as int
      ..idCustomerSalesUnit = json['idCustomerSalesUnit'] as int
      ..idUnit = json['idUnit'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerSalesUnitDetail': idCustomerSalesUnitDetail,
        'idCustomerSalesUnit': idCustomerSalesUnit,
        'idUnit': idUnit,
      };
}