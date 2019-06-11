class CshRoute {
  int idCashRoute;
  int idRoute;
  String dsRoute;
  DateTime dtRoute;
  
  CshRoute({
    this.idCashRoute,
    this.idRoute,
    this.dsRoute,
    this.dtRoute,
  });

  static CshRoute fromMap(Map<String, dynamic> json) {
    return CshRoute()
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