class PrdCategory {
  int idCategory;
  String dsCategory;
  int idLevel;
  
  PrdCategory({
    this.idCategory,
    this.dsCategory,
    this.idLevel,
  });

  static PrdCategory fromMap(Map<String, dynamic> json) {
    return PrdCategory()
      ..idCategory = json['idCategory'] as int
      ..dsCategory = json['dsCategory'] as String
      ..idLevel = json['idLevel'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCategory': idCategory,
        'dsCategory': dsCategory,
        'idLevel': idLevel,
      };
}