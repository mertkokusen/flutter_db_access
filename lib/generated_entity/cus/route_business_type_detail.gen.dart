
import 'package:database_access_layer/entity/cus/route_business_type_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class RouteBusinessTypeDetail extends RouteBusinessTypeDetailAbstract{
  int idRouteBusinessTypeDetail;
  int idRoute;
  int idBusinessCategory1;
  int idCategory3;
  
  RouteBusinessTypeDetail({
    this.idRouteBusinessTypeDetail,
    this.idRoute,
    this.idBusinessCategory1,
    this.idCategory3,
  });

  static RouteBusinessTypeDetail fromMap(Map<String, dynamic> json) {
    return RouteBusinessTypeDetail()
      ..idRouteBusinessTypeDetail = json['idRouteBusinessTypeDetail'] as int
      ..idRoute = json['idRoute'] as int
      ..idBusinessCategory1 = json['idBusinessCategory1'] as int
      ..idCategory3 = json['idCategory3'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRouteBusinessTypeDetail': idRouteBusinessTypeDetail,
        'idRoute': idRoute,
        'idBusinessCategory1': idBusinessCategory1,
        'idCategory3': idCategory3,
      };
}