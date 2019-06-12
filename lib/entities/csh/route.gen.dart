class Route {
  int idCashRoute;
  int idRoute;
  String dsRoute;
  DateTime dtRoute;
  
  Route({
    this.idCashRoute,
    this.idRoute,
    this.dsRoute,
    this.dtRoute,
  });

  static Route fromMap(Map<String, dynamic> json) {
    return Route()
      ..idCashRoute = json['idCashRoute'] as int
      ..idRoute = json['idRoute'] as int
      ..dsRoute = json['dsRoute'] as String
      ..dtRoute = json['dtRoute'] == null ? null : DateTime.parse(json['dtRoute'] as String)
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashRoute': idCashRoute,
        'idRoute': idRoute,
        'dsRoute': dsRoute,
        'dtRoute': dtRoute?.toIso8601String(),
      };
}