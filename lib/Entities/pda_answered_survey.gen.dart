class PdaAnsweredSurvey {
  int idAnsweredSurvey;
  int idCustomer;
  int idCoverageType;
  int idCoveragePk;
  
  PdaAnsweredSurvey({
    this.idAnsweredSurvey,
    this.idCustomer,
    this.idCoverageType,
    this.idCoveragePk,
  });

  static PdaAnsweredSurvey fromMap(Map<String, dynamic> json) {
    return PdaAnsweredSurvey()
      ..idAnsweredSurvey = json['idAnsweredSurvey'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idCoverageType = json['idCoverageType'] as int
      ..idCoveragePk = json['idCoveragePk'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAnsweredSurvey': idAnsweredSurvey,
        'idCustomer': idCustomer,
        'idCoverageType': idCoverageType,
        'idCoveragePk': idCoveragePk,
      };
}