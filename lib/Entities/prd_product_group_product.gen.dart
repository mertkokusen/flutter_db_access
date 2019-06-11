class PrdProductGroupProduct {
  int idProductGroupProduct;
  int idProductGroup;
  int idProduct;
  
  PrdProductGroupProduct({
    this.idProductGroupProduct,
    this.idProductGroup,
    this.idProduct,
  });

  static PrdProductGroupProduct fromMap(Map<String, dynamic> json) {
    return PrdProductGroupProduct()
      ..idProductGroupProduct = json['idProductGroupProduct'] as int
      ..idProductGroup = json['idProductGroup'] as int
      ..idProduct = json['idProduct'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductGroupProduct': idProductGroupProduct,
        'idProductGroup': idProductGroup,
        'idProduct': idProduct,
      };
}