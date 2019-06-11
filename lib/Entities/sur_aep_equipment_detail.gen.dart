class SurAepEquipmentDetail {
  int idAepEquipmentDetail;
  int idAepEquipment;
  int idCustomer;
  int idEquipment;
  DateTime dtStart;
  DateTime dtEnd;
  DateTime dtVisibleStart;
  DateTime dtVisibleEnd;
  String dsEquipmentPosition;
  
  SurAepEquipmentDetail({
    this.idAepEquipmentDetail,
    this.idAepEquipment,
    this.idCustomer,
    this.idEquipment,
    this.dtStart,
    this.dtEnd,
    this.dtVisibleStart,
    this.dtVisibleEnd,
    this.dsEquipmentPosition,
  });

  static SurAepEquipmentDetail fromMap(Map<String, dynamic> json) {
    return SurAepEquipmentDetail()
      ..idAepEquipmentDetail = json['idAepEquipmentDetail'] as int
      ..idAepEquipment = json['idAepEquipment'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idEquipment = json['idEquipment'] as int
      ..dtStart = json['dtStart'] as DateTime
      ..dtEnd = json['dtEnd'] as DateTime
      ..dtVisibleStart = json['dtVisibleStart'] as DateTime
      ..dtVisibleEnd = json['dtVisibleEnd'] as DateTime
      ..dsEquipmentPosition = json['dsEquipmentPosition'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepEquipmentDetail': idAepEquipmentDetail,
        'idAepEquipment': idAepEquipment,
        'idCustomer': idCustomer,
        'idEquipment': idEquipment,
        'dtStart': dtStart,
        'dtEnd': dtEnd,
        'dtVisibleStart': dtVisibleStart,
        'dtVisibleEnd': dtVisibleEnd,
        'dsEquipmentPosition': dsEquipmentPosition,
      };
}