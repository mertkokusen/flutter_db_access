class TsmActivityType {
  int idActivityType;
  String dsActivityType;
  String dsColor;
  
  TsmActivityType({
    this.idActivityType,
    this.dsActivityType,
    this.dsColor,
  });

  static TsmActivityType fromMap(Map<String, dynamic> json) {
    return TsmActivityType()
      ..idActivityType = json['idActivityType'] as int
      ..dsActivityType = json['dsActivityType'] as String
      ..dsColor = json['dsColor'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityType': idActivityType,
        'dsActivityType': dsActivityType,
        'dsColor': dsColor,
      };
}