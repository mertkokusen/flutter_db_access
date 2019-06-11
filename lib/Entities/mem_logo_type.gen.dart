class MemLogoType {
  int idLogoType;
  String dsLogoType;
  
  MemLogoType({
    this.idLogoType,
    this.dsLogoType,
  });

  static MemLogoType fromMap(Map<String, dynamic> json) {
    return MemLogoType()
      ..idLogoType = json['idLogoType'] as int
      ..dsLogoType = json['dsLogoType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idLogoType': idLogoType,
        'dsLogoType': dsLogoType,
      };
}