class SurEquipmentAnswer {
  int idEquipmentAnswer;
  String dsEquipmentAnswer;
  int mtSequence;
  
  SurEquipmentAnswer({
    this.idEquipmentAnswer,
    this.dsEquipmentAnswer,
    this.mtSequence,
  });

  static SurEquipmentAnswer fromMap(Map<String, dynamic> json) {
    return SurEquipmentAnswer()
      ..idEquipmentAnswer = json['idEquipmentAnswer'] as int
      ..dsEquipmentAnswer = json['dsEquipmentAnswer'] as String
      ..mtSequence = json['mtSequence'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idEquipmentAnswer': idEquipmentAnswer,
        'dsEquipmentAnswer': dsEquipmentAnswer,
        'mtSequence': mtSequence,
      };
}