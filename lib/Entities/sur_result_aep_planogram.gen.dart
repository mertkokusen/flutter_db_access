class SurResultAepPlanogram {
  int idResultAepPlanogram;
  int idCustomer;
  DateTime dtResult;
  int idAepPlanogram;
  int idAep;
  int idVisit;
  String dsUniqueKey;
  bool vrFlSent;
  bool vrFlOngoing;
  
  SurResultAepPlanogram({
    this.idResultAepPlanogram,
    this.idCustomer,
    this.dtResult,
    this.idAepPlanogram,
    this.idAep,
    this.idVisit,
    this.dsUniqueKey,
    this.vrFlSent,
    this.vrFlOngoing,
  });

  static SurResultAepPlanogram fromMap(Map<String, dynamic> json) {
    return SurResultAepPlanogram()
      ..idResultAepPlanogram = json['idResultAepPlanogram'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dtResult = json['dtResult'] == null ? null : DateTime.parse(json['dtResult'] as String)
      ..idAepPlanogram = json['idAepPlanogram'] as int
      ..idAep = json['idAep'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..vrFlOngoing = json['vrFlOngoing'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAepPlanogram': idResultAepPlanogram,
        'idCustomer': idCustomer,
        'dtResult': dtResult?.toIso8601String(),
        'idAepPlanogram': idAepPlanogram,
        'idAep': idAep,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'vrFlOngoing': vrFlOngoing,
      };
}