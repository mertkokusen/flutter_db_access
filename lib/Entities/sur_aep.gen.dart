class SurAep {
  int idAep;
  String dsAep;
  String dsDescription;
  int idAepType;
  int idSurveyCategory;
  DateTime dtStart;
  DateTime dtEnd;
  DateTime dtVisible;
  bool flTradeItemBasedQuestion;
  bool flOnlyDescription;
  
  SurAep({
    this.idAep,
    this.dsAep,
    this.dsDescription,
    this.idAepType,
    this.idSurveyCategory,
    this.dtStart,
    this.dtEnd,
    this.dtVisible,
    this.flTradeItemBasedQuestion,
    this.flOnlyDescription,
  });

  static SurAep fromMap(Map<String, dynamic> json) {
    return SurAep()
      ..idAep = json['idAep'] as int
      ..dsAep = json['dsAep'] as String
      ..dsDescription = json['dsDescription'] as String
      ..idAepType = json['idAepType'] as int
      ..idSurveyCategory = json['idSurveyCategory'] as int
      ..dtStart = json['dtStart'] as DateTime
      ..dtEnd = json['dtEnd'] as DateTime
      ..dtVisible = json['dtVisible'] as DateTime
      ..flTradeItemBasedQuestion = json['flTradeItemBasedQuestion'] == 1 ? true : false
      ..flOnlyDescription = json['flOnlyDescription'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAep': idAep,
        'dsAep': dsAep,
        'dsDescription': dsDescription,
        'idAepType': idAepType,
        'idSurveyCategory': idSurveyCategory,
        'dtStart': dtStart,
        'dtEnd': dtEnd,
        'dtVisible': dtVisible,
        'flTradeItemBasedQuestion': flTradeItemBasedQuestion,
        'flOnlyDescription': flOnlyDescription,
      };
}