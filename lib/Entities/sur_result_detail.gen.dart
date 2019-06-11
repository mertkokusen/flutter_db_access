class SurResultDetail {
  int idResultDetail;
  int idResult;
  int idSurvey;
  int idQuestion;
  int idProduct;
  int idAnswer;
  int flAnswer;
  int mtAnswer;
  String dsAnswer;
  DateTime dtAnswer;
  int mtScore;
  bool valid;
  String dsUniqueKey;
  
  SurResultDetail({
    this.idResultDetail,
    this.idResult,
    this.idSurvey,
    this.idQuestion,
    this.idProduct,
    this.idAnswer,
    this.flAnswer,
    this.mtAnswer,
    this.dsAnswer,
    this.dtAnswer,
    this.mtScore,
    this.valid,
    this.dsUniqueKey,
  });

  static SurResultDetail fromMap(Map<String, dynamic> json) {
    return SurResultDetail()
      ..idResultDetail = json['idResultDetail'] as int
      ..idResult = json['idResult'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idQuestion = json['idQuestion'] as int
      ..idProduct = json['idProduct'] as int
      ..idAnswer = json['idAnswer'] as int
      ..flAnswer = json['flAnswer'] as int
      ..mtAnswer = json['mtAnswer'] as int
      ..dsAnswer = json['dsAnswer'] as String
      ..dtAnswer = json['dtAnswer'] as DateTime
      ..mtScore = json['mtScore'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultDetail': idResultDetail,
        'idResult': idResult,
        'idSurvey': idSurvey,
        'idQuestion': idQuestion,
        'idProduct': idProduct,
        'idAnswer': idAnswer,
        'flAnswer': flAnswer,
        'mtAnswer': mtAnswer,
        'dsAnswer': dsAnswer,
        'dtAnswer': dtAnswer,
        'mtScore': mtScore,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
      };
}