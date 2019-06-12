
import 'package:database_access_layer/entity/cus/product_exclusion_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class ProductExclusionDetail extends ProductExclusionDetailAbstract{
  int idProductExclusionDetail;
  int idProductExclusion;
  int idProduct;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  
  ProductExclusionDetail({
    this.idProductExclusionDetail,
    this.idProductExclusion,
    this.idProduct,
    this.dtValidFrom,
    this.dtValidTo,
  });

  static ProductExclusionDetail fromMap(Map<String, dynamic> json) {
    return ProductExclusionDetail()
      ..idProductExclusionDetail = json['idProductExclusionDetail'] as int
      ..idProductExclusion = json['idProductExclusion'] as int
      ..idProduct = json['idProduct'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductExclusionDetail': idProductExclusionDetail,
        'idProductExclusion': idProductExclusion,
        'idProduct': idProduct,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
      };
}