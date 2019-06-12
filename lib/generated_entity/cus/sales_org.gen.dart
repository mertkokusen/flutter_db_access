
import 'package:database_access_layer/entity/cus/sales_org.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class SalesOrg extends SalesOrgAbstract{
  int idSalesOrg;
  String dsSalesOrg;
  String dsSalesOrgShort;
  String dsErpCode;
  
  SalesOrg({
    this.idSalesOrg,
    this.dsSalesOrg,
    this.dsSalesOrgShort,
    this.dsErpCode,
  });

  static SalesOrg fromMap(Map<String, dynamic> json) {
    return SalesOrg()
      ..idSalesOrg = json['idSalesOrg'] as int
      ..dsSalesOrg = json['dsSalesOrg'] as String
      ..dsSalesOrgShort = json['dsSalesOrgShort'] as String
      ..dsErpCode = json['dsErpCode'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSalesOrg': idSalesOrg,
        'dsSalesOrg': dsSalesOrg,
        'dsSalesOrgShort': dsSalesOrgShort,
        'dsErpCode': dsErpCode,
      };
}