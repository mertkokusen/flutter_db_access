class MemModelType {
  int idModelType;
  String dsModelType;
  
  MemModelType({
    this.idModelType,
    this.dsModelType,
  });

  static MemModelType fromMap(Map<String, dynamic> json) {
    return MemModelType()
      ..idModelType = json['idModelType'] as int
      ..dsModelType = json['dsModelType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idModelType': idModelType,
        'dsModelType': dsModelType,
      };
}