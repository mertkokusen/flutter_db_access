class VdoDocumentType {
  int idDocumentType;
  String dsDocumentType;
  String dsDocumentCode;
  bool flRequiresSku;
  
  VdoDocumentType({
    this.idDocumentType,
    this.dsDocumentType,
    this.dsDocumentCode,
    this.flRequiresSku,
  });

  static VdoDocumentType fromMap(Map<String, dynamic> json) {
    return VdoDocumentType()
      ..idDocumentType = json['idDocumentType'] as int
      ..dsDocumentType = json['dsDocumentType'] as String
      ..dsDocumentCode = json['dsDocumentCode'] as String
      ..flRequiresSku = json['flRequiresSku'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idDocumentType': idDocumentType,
        'dsDocumentType': dsDocumentType,
        'dsDocumentCode': dsDocumentCode,
        'flRequiresSku': flRequiresSku,
      };
}