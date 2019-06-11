class PrdProductGroup {
  int idProductGroup;
  int idProductGroupType;
  String dsProductGroup;
  
  PrdProductGroup({
    this.idProductGroup,
    this.idProductGroupType,
    this.dsProductGroup,
  });

  static PrdProductGroup fromMap(Map<String, dynamic> json) {
    return PrdProductGroup()
      ..idProductGroup = json['idProductGroup'] as int
      ..idProductGroupType = json['idProductGroupType'] as int
      ..dsProductGroup = json['dsProductGroup'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductGroup': idProductGroup,
        'idProductGroupType': idProductGroupType,
        'dsProductGroup': dsProductGroup,
      };
}