class BusinessCategory {
  int idBusinessCategory;
  String dsBusinessCategory;
  
  BusinessCategory({
    this.idBusinessCategory,
    this.dsBusinessCategory,
  });

  static BusinessCategory fromMap(Map<String, dynamic> json) {
    return BusinessCategory()
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..dsBusinessCategory = json['dsBusinessCategory'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idBusinessCategory': idBusinessCategory,
        'dsBusinessCategory': dsBusinessCategory,
      };
}