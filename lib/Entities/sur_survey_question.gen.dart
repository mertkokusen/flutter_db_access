class SurSurveyQuestion {
  int idSurveyQuestion;
  int idSurvey;
  int idAep;
  int idQuestion;
  String dsQuestion;
  int idQuestionType;
  int idQuestionSubType;
  int idAnswerType;
  bool flProductRelated;
  int idQuestionGroup;
  bool flMandatory;
  bool flDisplayLastVisitAnswer;
  int mtScore;
  int mtDefaultValue;
  int mtMinValue;
  int mtMaxValue;
  int mtDisplayOrder;
  bool flAdvanced;
  
  SurSurveyQuestion({
    this.idSurveyQuestion,
    this.idSurvey,
    this.idAep,
    this.idQuestion,
    this.dsQuestion,
    this.idQuestionType,
    this.idQuestionSubType,
    this.idAnswerType,
    this.flProductRelated,
    this.idQuestionGroup,
    this.flMandatory,
    this.flDisplayLastVisitAnswer,
    this.mtScore,
    this.mtDefaultValue,
    this.mtMinValue,
    this.mtMaxValue,
    this.mtDisplayOrder,
    this.flAdvanced,
  });

  static SurSurveyQuestion fromMap(Map<String, dynamic> json) {
    return SurSurveyQuestion()
      ..idSurveyQuestion = json['idSurveyQuestion'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idAep = json['idAep'] as int
      ..idQuestion = json['idQuestion'] as int
      ..dsQuestion = json['dsQuestion'] as String
      ..idQuestionType = json['idQuestionType'] as int
      ..idQuestionSubType = json['idQuestionSubType'] as int
      ..idAnswerType = json['idAnswerType'] as int
      ..flProductRelated = json['flProductRelated'] == 1 ? true : false
      ..idQuestionGroup = json['idQuestionGroup'] as int
      ..flMandatory = json['flMandatory'] == 1 ? true : false
      ..flDisplayLastVisitAnswer = json['flDisplayLastVisitAnswer'] == 1 ? true : false
      ..mtScore = json['mtScore'] as int
      ..mtDefaultValue = json['mtDefaultValue'] as int
      ..mtMinValue = json['mtMinValue'] as int
      ..mtMaxValue = json['mtMaxValue'] as int
      ..mtDisplayOrder = json['mtDisplayOrder'] as int
      ..flAdvanced = json['flAdvanced'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyQuestion': idSurveyQuestion,
        'idSurvey': idSurvey,
        'idAep': idAep,
        'idQuestion': idQuestion,
        'dsQuestion': dsQuestion,
        'idQuestionType': idQuestionType,
        'idQuestionSubType': idQuestionSubType,
        'idAnswerType': idAnswerType,
        'flProductRelated': flProductRelated,
        'idQuestionGroup': idQuestionGroup,
        'flMandatory': flMandatory,
        'flDisplayLastVisitAnswer': flDisplayLastVisitAnswer,
        'mtScore': mtScore,
        'mtDefaultValue': mtDefaultValue,
        'mtMinValue': mtMinValue,
        'mtMaxValue': mtMaxValue,
        'mtDisplayOrder': mtDisplayOrder,
        'flAdvanced': flAdvanced,
      };
}