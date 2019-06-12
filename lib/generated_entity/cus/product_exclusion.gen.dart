
import 'package:database_access_layer/entity/cus/product_exclusion.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class ProductExclusion extends ProductExclusionAbstract{
  int idProductExclusion;
  int idDealer;
  int idRoute;
  int idCustomer;
  int idSalesOffice;
  
  ProductExclusion({
    this.idProductExclusion,
    this.idDealer,
    this.idRoute,
    this.idCustomer,
    this.idSalesOffice,
  });

  static ProductExclusion fromMap(Map<String, dynamic> json) {
    return ProductExclusion()
      ..idProductExclusion = json['idProductExclusion'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductExclusion': idProductExclusion,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idSalesOffice': idSalesOffice,
      };
}