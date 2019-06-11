class SurInvolvedSurvey {
  int idInvolvedSurvey;
  int idCustomer;
  int idSurvey;
  String dsSurvey;
  DateTime dtAnswer;
  
  SurInvolvedSurvey({
    this.idInvolvedSurvey,
    this.idCustomer,
    this.idSurvey,
    this.dsSurvey,
    this.dtAnswer,
  });

  static SurInvolvedSurvey fromMap(Map<String, dynamic> json) {
    return SurInvolvedSurvey()
      ..idInvolvedSurvey = json['idInvolvedSurvey'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idSurvey = json['idSurvey'] as int
      ..dsSurvey = json['dsSurvey'] as String
      ..dtAnswer = json['dtAnswer'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idInvolvedSurvey': idInvolvedSurvey,
        'idCustomer': idCustomer,
        'idSurvey': idSurvey,
        'dsSurvey': dsSurvey,
        'dtAnswer': dtAnswer,
      };
}