class SurResultAep {
  int idResultAep;
  int idCustomer;
  DateTime dtResult;
  int idAep;
  int idAepType;
  int idVisit;
  String dsUniqueKey;
  bool vrFlSent;
  
  SurResultAep({
    this.idResultAep,
    this.idCustomer,
    this.dtResult,
    this.idAep,
    this.idAepType,
    this.idVisit,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static SurResultAep fromMap(Map<String, dynamic> json) {
    return SurResultAep()
      ..idResultAep = json['idResultAep'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dtResult = json['dtResult'] == null ? null : DateTime.parse(json['dtResult'] as String)
      ..idAep = json['idAep'] as int
      ..idAepType = json['idAepType'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAep': idResultAep,
        'idCustomer': idCustomer,
        'dtResult': dtResult?.toIso8601String(),
        'idAep': idAep,
        'idAepType': idAepType,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}