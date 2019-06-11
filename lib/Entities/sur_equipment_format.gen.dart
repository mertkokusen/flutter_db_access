class SurEquipmentFormat {
  int idEquipmentFormat;
  String dsEquipmentFormat;
  int mtSequence;
  
  SurEquipmentFormat({
    this.idEquipmentFormat,
    this.dsEquipmentFormat,
    this.mtSequence,
  });

  static SurEquipmentFormat fromMap(Map<String, dynamic> json) {
    return SurEquipmentFormat()
      ..idEquipmentFormat = json['idEquipmentFormat'] as int
      ..dsEquipmentFormat = json['dsEquipmentFormat'] as String
      ..mtSequence = json['mtSequence'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idEquipmentFormat': idEquipmentFormat,
        'dsEquipmentFormat': dsEquipmentFormat,
        'mtSequence': mtSequence,
      };
}