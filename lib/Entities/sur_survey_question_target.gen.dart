class SurSurveyQuestionTarget {
  int idSurveyQuestionTarget;
  int idSurvey;
  int idSurveyQuestion;
  int idQuestion;
  int idCustomer;
  int mtTarget;
  
  SurSurveyQuestionTarget({
    this.idSurveyQuestionTarget,
    this.idSurvey,
    this.idSurveyQuestion,
    this.idQuestion,
    this.idCustomer,
    this.mtTarget,
  });

  static SurSurveyQuestionTarget fromMap(Map<String, dynamic> json) {
    return SurSurveyQuestionTarget()
      ..idSurveyQuestionTarget = json['idSurveyQuestionTarget'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idSurveyQuestion = json['idSurveyQuestion'] as int
      ..idQuestion = json['idQuestion'] as int
      ..idCustomer = json['idCustomer'] as int
      ..mtTarget = json['mtTarget'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyQuestionTarget': idSurveyQuestionTarget,
        'idSurvey': idSurvey,
        'idSurveyQuestion': idSurveyQuestion,
        'idQuestion': idQuestion,
        'idCustomer': idCustomer,
        'mtTarget': mtTarget,
      };
}