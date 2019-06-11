class SurResultAepEquipment {
  int idResultAepEquipment;
  int idCustomer;
  DateTime dtResult;
  int idAepEquipment;
  int idAepEquipmentDetail;
  int idAep;
  int idEquipmentAnswer;
  int idVisit;
  String dsUniqueKey;
  bool vrFlSent;
  bool vrFlOngoing;
  
  SurResultAepEquipment({
    this.idResultAepEquipment,
    this.idCustomer,
    this.dtResult,
    this.idAepEquipment,
    this.idAepEquipmentDetail,
    this.idAep,
    this.idEquipmentAnswer,
    this.idVisit,
    this.dsUniqueKey,
    this.vrFlSent,
    this.vrFlOngoing,
  });

  static SurResultAepEquipment fromMap(Map<String, dynamic> json) {
    return SurResultAepEquipment()
      ..idResultAepEquipment = json['idResultAepEquipment'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dtResult = json['dtResult'] == null ? null : DateTime.parse(json['dtResult'] as String)
      ..idAepEquipment = json['idAepEquipment'] as int
      ..idAepEquipmentDetail = json['idAepEquipmentDetail'] as int
      ..idAep = json['idAep'] as int
      ..idEquipmentAnswer = json['idEquipmentAnswer'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..vrFlOngoing = json['vrFlOngoing'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAepEquipment': idResultAepEquipment,
        'idCustomer': idCustomer,
        'dtResult': dtResult?.toIso8601String(),
        'idAepEquipment': idAepEquipment,
        'idAepEquipmentDetail': idAepEquipmentDetail,
        'idAep': idAep,
        'idEquipmentAnswer': idEquipmentAnswer,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'vrFlOngoing': vrFlOngoing,
      };
}