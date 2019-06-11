class VdoAttribute {
  int idAttribute;
  int idDealer;
  String dsAttribute;
  int idDocumentType;
  int idDataType;
  bool flMandatory;
  
  VdoAttribute({
    this.idAttribute,
    this.idDealer,
    this.dsAttribute,
    this.idDocumentType,
    this.idDataType,
    this.flMandatory,
  });

  static VdoAttribute fromMap(Map<String, dynamic> json) {
    return VdoAttribute()
      ..idAttribute = json['idAttribute'] as int
      ..idDealer = json['idDealer'] as int
      ..dsAttribute = json['dsAttribute'] as String
      ..idDocumentType = json['idDocumentType'] as int
      ..idDataType = json['idDataType'] as int
      ..flMandatory = json['flMandatory'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAttribute': idAttribute,
        'idDealer': idDealer,
        'dsAttribute': dsAttribute,
        'idDocumentType': idDocumentType,
        'idDataType': idDataType,
        'flMandatory': flMandatory,
      };
}