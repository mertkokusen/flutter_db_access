class SurSurvey {
  int idSurvey;
  String dsSurvey;
  String dsDescription;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  int idSurveyType;
  int idSurveySubType;
  int idSurveyCategory;
  bool flMandatory;
  bool flDisplayLastVisitAnswer;
  int idAep;
  
  SurSurvey({
    this.idSurvey,
    this.dsSurvey,
    this.dsDescription,
    this.dtValidFrom,
    this.dtValidTo,
    this.idSurveyType,
    this.idSurveySubType,
    this.idSurveyCategory,
    this.flMandatory,
    this.flDisplayLastVisitAnswer,
    this.idAep,
  });

  static SurSurvey fromMap(Map<String, dynamic> json) {
    return SurSurvey()
      ..idSurvey = json['idSurvey'] as int
      ..dsSurvey = json['dsSurvey'] as String
      ..dsDescription = json['dsDescription'] as String
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
      ..idSurveyType = json['idSurveyType'] as int
      ..idSurveySubType = json['idSurveySubType'] as int
      ..idSurveyCategory = json['idSurveyCategory'] as int
      ..flMandatory = json['flMandatory'] == 1 ? true : false
      ..flDisplayLastVisitAnswer = json['flDisplayLastVisitAnswer'] == 1 ? true : false
      ..idAep = json['idAep'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurvey': idSurvey,
        'dsSurvey': dsSurvey,
        'dsDescription': dsDescription,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
        'idSurveyType': idSurveyType,
        'idSurveySubType': idSurveySubType,
        'idSurveyCategory': idSurveyCategory,
        'flMandatory': flMandatory,
        'flDisplayLastVisitAnswer': flDisplayLastVisitAnswer,
        'idAep': idAep,
      };
}