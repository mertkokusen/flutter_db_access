class CusRouteBusinessType {
  int idRouteBusinessType;
  String dsRouteBusinessType;
  
  CusRouteBusinessType({
    this.idRouteBusinessType,
    this.dsRouteBusinessType,
  });

  static CusRouteBusinessType fromMap(Map<String, dynamic> json) {
    return CusRouteBusinessType()
      ..idRouteBusinessType = json['idRouteBusinessType'] as int
      ..dsRouteBusinessType = json['dsRouteBusinessType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRouteBusinessType': idRouteBusinessType,
        'dsRouteBusinessType': dsRouteBusinessType,
      };
}