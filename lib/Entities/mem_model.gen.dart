class MemModel {
  int idModel;
  String dsModel;
  int idModelCategory;
  
  MemModel({
    this.idModel,
    this.dsModel,
    this.idModelCategory,
  });

  static MemModel fromMap(Map<String, dynamic> json) {
    return MemModel()
      ..idModel = json['idModel'] as int
      ..dsModel = json['dsModel'] as String
      ..idModelCategory = json['idModelCategory'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idModel': idModel,
        'dsModel': dsModel,
        'idModelCategory': idModelCategory,
      };
}