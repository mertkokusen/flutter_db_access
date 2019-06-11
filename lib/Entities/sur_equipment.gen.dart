class SurEquipment {
  int idEquipment;
  String dsEquipment;
  String dsSapEquipmentCode;
  int idEquipmentFormat;
  int idSurveyCategory;
  
  SurEquipment({
    this.idEquipment,
    this.dsEquipment,
    this.dsSapEquipmentCode,
    this.idEquipmentFormat,
    this.idSurveyCategory,
  });

  static SurEquipment fromMap(Map<String, dynamic> json) {
    return SurEquipment()
      ..idEquipment = json['idEquipment'] as int
      ..dsEquipment = json['dsEquipment'] as String
      ..dsSapEquipmentCode = json['dsSapEquipmentCode'] as String
      ..idEquipmentFormat = json['idEquipmentFormat'] as int
      ..idSurveyCategory = json['idSurveyCategory'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idEquipment': idEquipment,
        'dsEquipment': dsEquipment,
        'dsSapEquipmentCode': dsSapEquipmentCode,
        'idEquipmentFormat': idEquipmentFormat,
        'idSurveyCategory': idSurveyCategory,
      };
}