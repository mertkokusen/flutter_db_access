class CusRouteBusinessTypeDetail {
  int idRouteBusinessTypeDetail;
  int idRoute;
  int idBusinessCategory1;
  int idCategory3;
  
  CusRouteBusinessTypeDetail({
    this.idRouteBusinessTypeDetail,
    this.idRoute,
    this.idBusinessCategory1,
    this.idCategory3,
  });

  static CusRouteBusinessTypeDetail fromMap(Map<String, dynamic> json) {
    return CusRouteBusinessTypeDetail()
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