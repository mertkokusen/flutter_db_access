class SurAepProduct {
  int idAepProduct;
  int idAep;
  int idProduct;
  String dsProduct;
  
  SurAepProduct({
    this.idAepProduct,
    this.idAep,
    this.idProduct,
    this.dsProduct,
  });

  static SurAepProduct fromMap(Map<String, dynamic> json) {
    return SurAepProduct()
      ..idAepProduct = json['idAepProduct'] as int
      ..idAep = json['idAep'] as int
      ..idProduct = json['idProduct'] as int
      ..dsProduct = json['dsProduct'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepProduct': idAepProduct,
        'idAep': idAep,
        'idProduct': idProduct,
        'dsProduct': dsProduct,
      };
}