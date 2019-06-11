class PrdBusinessCategory {
  int idBusinessCategory;
  String dsBusinessCategory;
  int idLevel;
  
  PrdBusinessCategory({
    this.idBusinessCategory,
    this.dsBusinessCategory,
    this.idLevel,
  });

  static PrdBusinessCategory fromMap(Map<String, dynamic> json) {
    return PrdBusinessCategory()
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..dsBusinessCategory = json['dsBusinessCategory'] as String
      ..idLevel = json['idLevel'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idBusinessCategory': idBusinessCategory,
        'dsBusinessCategory': dsBusinessCategory,
        'idLevel': idLevel,
      };
}