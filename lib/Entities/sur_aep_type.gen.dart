class SurAepType {
  int idAepType;
  String dsAepType;
  
  SurAepType({
    this.idAepType,
    this.dsAepType,
  });

  static SurAepType fromMap(Map<String, dynamic> json) {
    return SurAepType()
      ..idAepType = json['idAepType'] as int
      ..dsAepType = json['dsAepType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepType': idAepType,
        'dsAepType': dsAepType,
      };
}