class SurResult {
  int idResult;
  int idSurvey;
  int idUser;
  int idCustomer;
  DateTime dtAnswer;
  int mtScore;
  int idTsmActivity;
  int idTsmActivityDate;
  int idVisit;
  String dsUniqueKey;
  String dsActivityUniqueKey;
  String dsActivityDateUniqueKey;
  bool vrFlSent;
  bool vrFlOngoing;
  
  SurResult({
    this.idResult,
    this.idSurvey,
    this.idUser,
    this.idCustomer,
    this.dtAnswer,
    this.mtScore,
    this.idTsmActivity,
    this.idTsmActivityDate,
    this.idVisit,
    this.dsUniqueKey,
    this.dsActivityUniqueKey,
    this.dsActivityDateUniqueKey,
    this.vrFlSent,
    this.vrFlOngoing,
  });

  static SurResult fromMap(Map<String, dynamic> json) {
    return SurResult()
      ..idResult = json['idResult'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idUser = json['idUser'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dtAnswer = json['dtAnswer'] as DateTime
      ..mtScore = json['mtScore'] as int
      ..idTsmActivity = json['idTsmActivity'] as int
      ..idTsmActivityDate = json['idTsmActivityDate'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityUniqueKey = json['dsActivityUniqueKey'] as String
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..vrFlOngoing = json['vrFlOngoing'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResult': idResult,
        'idSurvey': idSurvey,
        'idUser': idUser,
        'idCustomer': idCustomer,
        'dtAnswer': dtAnswer,
        'mtScore': mtScore,
        'idTsmActivity': idTsmActivity,
        'idTsmActivityDate': idTsmActivityDate,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityUniqueKey': dsActivityUniqueKey,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'vrFlSent': vrFlSent,
        'vrFlOngoing': vrFlOngoing,
      };
}