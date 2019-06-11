class OrdGroupCodeValue {
  int idGroupCodeValue;
  int idDealer;
  String dsTitle;
  int idCodeValue;
  String dsValue;
  int mtOrder;
  
  OrdGroupCodeValue({
    this.idGroupCodeValue,
    this.idDealer,
    this.dsTitle,
    this.idCodeValue,
    this.dsValue,
    this.mtOrder,
  });

  static OrdGroupCodeValue fromMap(Map<String, dynamic> json) {
    return OrdGroupCodeValue()
      ..idGroupCodeValue = json['idGroupCodeValue'] as int
      ..idDealer = json['idDealer'] as int
      ..dsTitle = json['dsTitle'] as String
      ..idCodeValue = json['idCodeValue'] as int
      ..dsValue = json['dsValue'] as String
      ..mtOrder = json['mtOrder'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idGroupCodeValue': idGroupCodeValue,
        'idDealer': idDealer,
        'dsTitle': dsTitle,
        'idCodeValue': idCodeValue,
        'dsValue': dsValue,
        'mtOrder': mtOrder,
      };
}