class DefGroupCodeValue {
  int idGroupCodeValue;
  int mtBitwiseValue;
  String dsTitle;
  String dsValue;
  
  DefGroupCodeValue({
    this.idGroupCodeValue,
    this.mtBitwiseValue,
    this.dsTitle,
    this.dsValue,
  });

  static DefGroupCodeValue fromMap(Map<String, dynamic> json) {
    return DefGroupCodeValue()
      ..idGroupCodeValue = json['idGroupCodeValue'] as int
      ..mtBitwiseValue = json['mtBitwiseValue'] as int
      ..dsTitle = json['dsTitle'] as String
      ..dsValue = json['dsValue'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idGroupCodeValue': idGroupCodeValue,
        'mtBitwiseValue': mtBitwiseValue,
        'dsTitle': dsTitle,
        'dsValue': dsValue,
      };
}