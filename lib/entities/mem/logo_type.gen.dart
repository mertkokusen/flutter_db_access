class LogoType {
  int idLogoType;
  String dsLogoType;
  
  LogoType({
    this.idLogoType,
    this.dsLogoType,
  });

  static LogoType fromMap(Map<String, dynamic> json) {
    return LogoType()
      ..idLogoType = json['idLogoType'] as int
      ..dsLogoType = json['dsLogoType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idLogoType': idLogoType,
        'dsLogoType': dsLogoType,
      };
}