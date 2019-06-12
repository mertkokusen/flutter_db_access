
import 'package:database_access_layer/entity/int/product_dealer_code.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class ProductDealerCode extends ProductDealerCodeAbstract{
  int idProductDealerCode;
  int idDealer;
  int idProduct;
  String dsProductNo;
  int mtDivisible;
  
  ProductDealerCode({
    this.idProductDealerCode,
    this.idDealer,
    this.idProduct,
    this.dsProductNo,
    this.mtDivisible,
  });

  static ProductDealerCode fromMap(Map<String, dynamic> json) {
    return ProductDealerCode()
      ..idProductDealerCode = json['idProductDealerCode'] as int
      ..idDealer = json['idDealer'] as int
      ..idProduct = json['idProduct'] as int
      ..dsProductNo = json['dsProductNo'] as String
      ..mtDivisible = json['mtDivisible'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductDealerCode': idProductDealerCode,
        'idDealer': idDealer,
        'idProduct': idProduct,
        'dsProductNo': dsProductNo,
        'mtDivisible': mtDivisible,
      };
}