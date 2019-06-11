class MemBusinessCategory {
  int idBusinessCategory;
  String dsBusinessCategory;
  
  MemBusinessCategory({
    this.idBusinessCategory,
    this.dsBusinessCategory,
  });

  static MemBusinessCategory fromMap(Map<String, dynamic> json) {
    return MemBusinessCategory()
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..dsBusinessCategory = json['dsBusinessCategory'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idBusinessCategory': idBusinessCategory,
        'dsBusinessCategory': dsBusinessCategory,
      };
}