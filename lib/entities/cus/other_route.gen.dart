class OtherRoute {
  int idOtherRoute;
  int idCustomer;
  int idVisitPlan;
  String dsRoute;
  String dsAgent;
  
  OtherRoute({
    this.idOtherRoute,
    this.idCustomer,
    this.idVisitPlan,
    this.dsRoute,
    this.dsAgent,
  });

  static OtherRoute fromMap(Map<String, dynamic> json) {
    return OtherRoute()
      ..idOtherRoute = json['idOtherRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisitPlan = json['idVisitPlan'] as int
      ..dsRoute = json['dsRoute'] as String
      ..dsAgent = json['dsAgent'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOtherRoute': idOtherRoute,
        'idCustomer': idCustomer,
        'idVisitPlan': idVisitPlan,
        'dsRoute': dsRoute,
        'dsAgent': dsAgent,
      };
}