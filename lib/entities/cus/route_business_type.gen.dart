class RouteBusinessType {
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