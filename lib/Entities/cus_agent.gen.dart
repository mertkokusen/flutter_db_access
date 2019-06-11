class CusAgent {
  int idAgent;
  String dsAgent;
  int idUser;
  int idDealer;
  int idRoute;
  int idSalesOrg;
  int idVisitPlan;
  String dsParameter;
  bool flDayFinished;
  DateTime dtLastVisitListDay;
  
  CusAgent({
    this.idAgent,
    this.dsAgent,
    this.idUser,
    this.idDealer,
    this.idRoute,
    this.idSalesOrg,
    this.idVisitPlan,
    this.dsParameter,
    this.flDayFinished,
    this.dtLastVisitListDay,
  });

  static CusAgent fromMap(Map<String, dynamic> json) {
    return CusAgent()
      ..idAgent = json['idAgent'] as int
      ..dsAgent = json['dsAgent'] as String
      ..idUser = json['idUser'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idVisitPlan = json['idVisitPlan'] as int
      ..dsParameter = json['dsParameter'] as String
      ..flDayFinished = json['flDayFinished'] == 1 ? true : false
      ..dtLastVisitListDay = json['dtLastVisitListDay'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAgent': idAgent,
        'dsAgent': dsAgent,
        'idUser': idUser,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idSalesOrg': idSalesOrg,
        'idVisitPlan': idVisitPlan,
        'dsParameter': dsParameter,
        'flDayFinished': flDayFinished,
        'dtLastVisitListDay': dtLastVisitListDay,
      };
}