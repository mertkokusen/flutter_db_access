class SurResultAepDetail {
  int idResultAepDetail;
  bool valid;
  int idResultAep;
  int idAep;
  int idProduct;
  int idQuestion;
  int idAnswer;
  bool flAnswer;
  int mtAnswer;
  String dsAnswer;
  DateTime dtAnswer;
  String dsUniqueKey;
  bool vrFlSent;
  
  SurResultAepDetail({
    this.idResultAepDetail,
    this.valid,
    this.idResultAep,
    this.idAep,
    this.idProduct,
    this.idQuestion,
    this.idAnswer,
    this.flAnswer,
    this.mtAnswer,
    this.dsAnswer,
    this.dtAnswer,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static SurResultAepDetail fromMap(Map<String, dynamic> json) {
    return SurResultAepDetail()
      ..idResultAepDetail = json['idResultAepDetail'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idResultAep = json['idResultAep'] as int
      ..idAep = json['idAep'] as int
      ..idProduct = json['idProduct'] as int
      ..idQuestion = json['idQuestion'] as int
      ..idAnswer = json['idAnswer'] as int
      ..flAnswer = json['flAnswer'] == 1 ? true : false
      ..mtAnswer = json['mtAnswer'] as int
      ..dsAnswer = json['dsAnswer'] as String
      ..dtAnswer = json['dtAnswer'] == null ? null : DateTime.parse(json['dtAnswer'] as String)
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAepDetail': idResultAepDetail,
        'valid': valid,
        'idResultAep': idResultAep,
        'idAep': idAep,
        'idProduct': idProduct,
        'idQuestion': idQuestion,
        'idAnswer': idAnswer,
        'flAnswer': flAnswer,
        'mtAnswer': mtAnswer,
        'dsAnswer': dsAnswer,
        'dtAnswer': dtAnswer?.toIso8601String(),
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}