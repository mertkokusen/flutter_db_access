class SurAepEquipment {
  int idAepEquipment;
  String dsAepEquipment;
  int idAep;
  int idSurveyCategory;
  bool flMandatoryAnswer;
  bool flForAllCoverage;
  int idAepType;
  
  SurAepEquipment({
    this.idAepEquipment,
    this.dsAepEquipment,
    this.idAep,
    this.idSurveyCategory,
    this.flMandatoryAnswer,
    this.flForAllCoverage,
    this.idAepType,
  });

  static SurAepEquipment fromMap(Map<String, dynamic> json) {
    return SurAepEquipment()
      ..idAepEquipment = json['idAepEquipment'] as int
      ..dsAepEquipment = json['dsAepEquipment'] as String
      ..idAep = json['idAep'] as int
      ..idSurveyCategory = json['idSurveyCategory'] as int
      ..flMandatoryAnswer = json['flMandatoryAnswer'] == 1 ? true : false
      ..flForAllCoverage = json['flForAllCoverage'] == 1 ? true : false
      ..idAepType = json['idAepType'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepEquipment': idAepEquipment,
        'dsAepEquipment': dsAepEquipment,
        'idAep': idAep,
        'idSurveyCategory': idSurveyCategory,
        'flMandatoryAnswer': flMandatoryAnswer,
        'flForAllCoverage': flForAllCoverage,
        'idAepType': idAepType,
      };
}