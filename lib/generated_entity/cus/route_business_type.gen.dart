
import 'package:database_access_layer/entity/cus/route_business_type.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class RouteBusinessType extends RouteBusinessTypeAbstract{
  int idRouteBusinessType;
  String dsRouteBusinessType;
  
  RouteBusinessType({
    this.idRouteBusinessType,
    this.dsRouteBusinessType,
  });

  static RouteBusinessType fromMap(Map<String, dynamic> json) {
    return RouteBusinessType()
      ..idRouteBusinessType = json['idRouteBusinessType'] as int
      ..dsRouteBusinessType = json['dsRouteBusinessType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRouteBusinessType': idRouteBusinessType,
        'dsRouteBusinessType': dsRouteBusinessType,
      };
}