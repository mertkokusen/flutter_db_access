
import 'package:database_access_layer/entity/mem/order_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class OrderDetail extends OrderDetailAbstract{
  int idOrderDetail;
  int idOrder;
  int idModelCategory;
  int idModelType;
  int idBusinessCategory;
  String dsComment;
  String vrDsBusinessCategory;
  String vrDsModelCategory;
  String vrDsModelType;
  int valid;
  int flFromWeb;
  
  OrderDetail({
    this.idOrderDetail,
    this.idOrder,
    this.idModelCategory,
    this.idModelType,
    this.idBusinessCategory,
    this.dsComment,
    this.vrDsBusinessCategory,
    this.vrDsModelCategory,
    this.vrDsModelType,
    this.valid,
    this.flFromWeb,
  });

  static OrderDetail fromMap(Map<String, dynamic> json) {
    return OrderDetail()
      ..idOrderDetail = json['idOrderDetail'] as int
      ..idOrder = json['idOrder'] as int
      ..idModelCategory = json['idModelCategory'] as int
      ..idModelType = json['idModelType'] as int
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..dsComment = json['dsComment'] as String
      ..vrDsBusinessCategory = json['vrDsBusinessCategory'] as String
      ..vrDsModelCategory = json['vrDsModelCategory'] as String
      ..vrDsModelType = json['vrDsModelType'] as String
      ..valid = json['valid'] as int
      ..flFromWeb = json['flFromWeb'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrderDetail': idOrderDetail,
        'idOrder': idOrder,
        'idModelCategory': idModelCategory,
        'idModelType': idModelType,
        'idBusinessCategory': idBusinessCategory,
        'dsComment': dsComment,
        'vrDsBusinessCategory': vrDsBusinessCategory,
        'vrDsModelCategory': vrDsModelCategory,
        'vrDsModelType': vrDsModelType,
        'valid': valid,
        'flFromWeb': flFromWeb,
      };
}