
import 'package:database_access_layer/entity/cus/customer_mem_audit.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class CustomerMemAudit extends CustomerMemAuditAbstract{
  int idCustomerMemAudit;
  int idRoute;
  int idCustomer;
  
  CustomerMemAudit({
    this.idCustomerMemAudit,
    this.idRoute,
    this.idCustomer,
  });

  static CustomerMemAudit fromMap(Map<String, dynamic> json) {
    return CustomerMemAudit()
      ..idCustomerMemAudit = json['idCustomerMemAudit'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerMemAudit': idCustomerMemAudit,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
      };
}