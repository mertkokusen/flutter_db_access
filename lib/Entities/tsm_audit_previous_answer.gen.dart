class TsmAuditPreviousAnswer {
  int idSurveyPreviousAnswer;
  int idUser;
  String dsUser;
  int idCustomer;
  int idSurvey;
  int idQuestion;
  int idProduct;
  int idAnswer;
  bool flAnswer;
  int mtAnswer;
  String dsAnswer;
  DateTime dtAnswer;
  
  TsmAuditPreviousAnswer({
    this.idSurveyPreviousAnswer,
    this.idUser,
    this.dsUser,
    this.idCustomer,
    this.idSurvey,
    this.idQuestion,
    this.idProduct,
    this.idAnswer,
    this.flAnswer,
    this.mtAnswer,
    this.dsAnswer,
    this.dtAnswer,
  });

  static TsmAuditPreviousAnswer fromMap(Map<String, dynamic> json) {
    return TsmAuditPreviousAnswer()
      ..idSurveyPreviousAnswer = json['idSurveyPreviousAnswer'] as int
      ..idUser = json['idUser'] as int
      ..dsUser = json['dsUser'] as String
      ..idCustomer = json['idCustomer'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idQuestion = json['idQuestion'] as int
      ..idProduct = json['idProduct'] as int
      ..idAnswer = json['idAnswer'] as int
      ..flAnswer = json['flAnswer'] == 1 ? true : false
      ..mtAnswer = json['mtAnswer'] as int
      ..dsAnswer = json['dsAnswer'] as String
      ..dtAnswer = json['dtAnswer'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyPreviousAnswer': idSurveyPreviousAnswer,
        'idUser': idUser,
        'dsUser': dsUser,
        'idCustomer': idCustomer,
        'idSurvey': idSurvey,
        'idQuestion': idQuestion,
        'idProduct': idProduct,
        'idAnswer': idAnswer,
        'flAnswer': flAnswer,
        'mtAnswer': mtAnswer,
        'dsAnswer': dsAnswer,
        'dtAnswer': dtAnswer,
      };
}