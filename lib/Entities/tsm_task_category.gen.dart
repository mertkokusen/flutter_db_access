class TsmTaskCategory {
  int idTaskCategory;
  String dsTaskCategory;
  bool flActive;
  
  TsmTaskCategory({
    this.idTaskCategory,
    this.dsTaskCategory,
    this.flActive,
  });

  static TsmTaskCategory fromMap(Map<String, dynamic> json) {
    return TsmTaskCategory()
      ..idTaskCategory = json['idTaskCategory'] as int
      ..dsTaskCategory = json['dsTaskCategory'] as String
      ..flActive = json['flActive'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskCategory': idTaskCategory,
        'dsTaskCategory': dsTaskCategory,
        'flActive': flActive,
      };
}