class MemModelCategory {
  int idModelCategory;
  String dsModelCategory;
  String dsModelClass;
  int flScan;
  
  MemModelCategory({
    this.idModelCategory,
    this.dsModelCategory,
    this.dsModelClass,
    this.flScan,
  });

  static MemModelCategory fromMap(Map<String, dynamic> json) {
    return MemModelCategory()
      ..idModelCategory = json['idModelCategory'] as int
      ..dsModelCategory = json['dsModelCategory'] as String
      ..dsModelClass = json['dsModelClass'] as String
      ..flScan = json['flScan'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idModelCategory': idModelCategory,
        'dsModelCategory': dsModelCategory,
        'dsModelClass': dsModelClass,
        'flScan': flScan,
      };
}