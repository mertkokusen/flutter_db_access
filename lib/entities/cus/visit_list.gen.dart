class VisitList {
  int idVisitList;
  int idVisitPlan;
  int idSalesOrg;
  int idRoute;
  int idAgent;
  int idAgentBackup;
  DateTime dtVisit;
  
  VisitList({
    this.idVisitList,
    this.idVisitPlan,
    this.idSalesOrg,
    this.idRoute,
    this.idAgent,
    this.idAgentBackup,
    this.dtVisit,
  });

  static VisitList fromMap(Map<String, dynamic> json) {
    return VisitList()
      ..idVisitList = json['idVisitList'] as int
      ..idVisitPlan = json['idVisitPlan'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idRoute = json['idRoute'] as int
      ..idAgent = json['idAgent'] as int
      ..idAgentBackup = json['idAgentBackup'] as int
      ..dtVisit = json['dtVisit'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitList': idVisitList,
        'idVisitPlan': idVisitPlan,
        'idSalesOrg': idSalesOrg,
        'idRoute': idRoute,
        'idAgent': idAgent,
        'idAgentBackup': idAgentBackup,
        'dtVisit': dtVisit,
      };
}