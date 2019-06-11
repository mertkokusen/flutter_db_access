class VdoAttributeValue {
  int idAttributeValue;
  int idAttribute;
  String dsValue;
  int mtSequence;
  
  VdoAttributeValue({
    this.idAttributeValue,
    this.idAttribute,
    this.dsValue,
    this.mtSequence,
  });

  static VdoAttributeValue fromMap(Map<String, dynamic> json) {
    return VdoAttributeValue()
      ..idAttributeValue = json['idAttributeValue'] as int
      ..idAttribute = json['idAttribute'] as int
      ..dsValue = json['dsValue'] as String
      ..mtSequence = json['mtSequence'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAttributeValue': idAttributeValue,
        'idAttribute': idAttribute,
        'dsValue': dsValue,
        'mtSequence': mtSequence,
      };
}