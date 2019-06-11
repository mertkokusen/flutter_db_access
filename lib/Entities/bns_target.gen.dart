class BnsTarget {
  int idTarget;
  int idBrand;
  String dsUnit;
  int mtTarget;
  int mtRealized;
  
  BnsTarget({
    this.idTarget,
    this.idBrand,
    this.dsUnit,
    this.mtTarget,
    this.mtRealized,
  });

  static BnsTarget fromMap(Map<String, dynamic> json) {
    return BnsTarget()
      ..idTarget = json['idTarget'] as int
      ..idBrand = json['idBrand'] as int
      ..dsUnit = json['dsUnit'] as String
      ..mtTarget = json['mtTarget'] as int
      ..mtRealized = json['mtRealized'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTarget': idTarget,
        'idBrand': idBrand,
        'dsUnit': dsUnit,
        'mtTarget': mtTarget,
        'mtRealized': mtRealized,
      };
}