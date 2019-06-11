class PrdCategoryMatrix {
  int idCategoryMatrix;
  int idCategory1;
  int idCategory2;
  int idCategory3;
  int idCategory4;
  int idCategory5;
  int idCategory6;
  int idCategory7;
  
  PrdCategoryMatrix({
    this.idCategoryMatrix,
    this.idCategory1,
    this.idCategory2,
    this.idCategory3,
    this.idCategory4,
    this.idCategory5,
    this.idCategory6,
    this.idCategory7,
  });

  static PrdCategoryMatrix fromMap(Map<String, dynamic> json) {
    return PrdCategoryMatrix()
      ..idCategoryMatrix = json['idCategoryMatrix'] as int
      ..idCategory1 = json['idCategory1'] as int
      ..idCategory2 = json['idCategory2'] as int
      ..idCategory3 = json['idCategory3'] as int
      ..idCategory4 = json['idCategory4'] as int
      ..idCategory5 = json['idCategory5'] as int
      ..idCategory6 = json['idCategory6'] as int
      ..idCategory7 = json['idCategory7'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCategoryMatrix': idCategoryMatrix,
        'idCategory1': idCategory1,
        'idCategory2': idCategory2,
        'idCategory3': idCategory3,
        'idCategory4': idCategory4,
        'idCategory5': idCategory5,
        'idCategory6': idCategory6,
        'idCategory7': idCategory7,
      };
}