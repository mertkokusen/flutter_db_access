class TsmCertificationPoint {
  int idActivityDate;
  int idSurvey;
  int idQuestion;
  int mtPoint;
  int mtPercent;
  String dsUniqueKey;
  String dsActivityDateUniqueKey;
  int vrFlSent;
  
  TsmCertificationPoint({
    this.idActivityDate,
    this.idSurvey,
    this.idQuestion,
    this.mtPoint,
    this.mtPercent,
    this.dsUniqueKey,
    this.dsActivityDateUniqueKey,
    this.vrFlSent,
  });

  static TsmCertificationPoint fromMap(Map<String, dynamic> json) {
    return TsmCertificationPoint()
      ..idActivityDate = json['idActivityDate'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idQuestion = json['idQuestion'] as int
      ..mtPoint = json['mtPoint'] as int
      ..mtPercent = json['mtPercent'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityDate': idActivityDate,
        'idSurvey': idSurvey,
        'idQuestion': idQuestion,
        'mtPoint': mtPoint,
        'mtPercent': mtPercent,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'vrFlSent': vrFlSent,
      };
}