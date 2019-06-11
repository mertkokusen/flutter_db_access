class SurSurveyAnswer {
  int idSurveyAnswer;
  int idQuestion;
  int idSurvey;
  int idAnswer;
  String dsAnswer;
  int mtScore;
  int mtDisplayOrder;
  int idAep;
  
  SurSurveyAnswer({
    this.idSurveyAnswer,
    this.idQuestion,
    this.idSurvey,
    this.idAnswer,
    this.dsAnswer,
    this.mtScore,
    this.mtDisplayOrder,
    this.idAep,
  });

  static SurSurveyAnswer fromMap(Map<String, dynamic> json) {
    return SurSurveyAnswer()
      ..idSurveyAnswer = json['idSurveyAnswer'] as int
      ..idQuestion = json['idQuestion'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idAnswer = json['idAnswer'] as int
      ..dsAnswer = json['dsAnswer'] as String
      ..mtScore = json['mtScore'] as int
      ..mtDisplayOrder = json['mtDisplayOrder'] as int
      ..idAep = json['idAep'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyAnswer': idSurveyAnswer,
        'idQuestion': idQuestion,
        'idSurvey': idSurvey,
        'idAnswer': idAnswer,
        'dsAnswer': dsAnswer,
        'mtScore': mtScore,
        'mtDisplayOrder': mtDisplayOrder,
        'idAep': idAep,
      };
}