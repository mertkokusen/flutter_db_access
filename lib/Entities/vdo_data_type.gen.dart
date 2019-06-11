class VdoDataType {
  int idDataType;
  String dsDataType;
  
  VdoDataType({
    this.idDataType,
    this.dsDataType,
  });

  static VdoDataType fromMap(Map<String, dynamic> json) {
    return VdoDataType()
      ..idDataType = json['idDataType'] as int
      ..dsDataType = json['dsDataType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idDataType': idDataType,
        'dsDataType': dsDataType,
      };
}