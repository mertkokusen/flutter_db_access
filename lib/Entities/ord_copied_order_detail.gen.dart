class OrdCopiedOrderDetail {
  int idOrderDetail;
  int idOrder;
  int idProduct;
  int idUnit;
  int mtQuantity;
  
  OrdCopiedOrderDetail({
    this.idOrderDetail,
    this.idOrder,
    this.idProduct,
    this.idUnit,
    this.mtQuantity,
  });

  static OrdCopiedOrderDetail fromMap(Map<String, dynamic> json) {
    return OrdCopiedOrderDetail()
      ..idOrderDetail = json['idOrderDetail'] as int
      ..idOrder = json['idOrder'] as int
      ..idProduct = json['idProduct'] as int
      ..idUnit = json['idUnit'] as int
      ..mtQuantity = json['mtQuantity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrderDetail': idOrderDetail,
        'idOrder': idOrder,
        'idProduct': idProduct,
        'idUnit': idUnit,
        'mtQuantity': mtQuantity,
      };
}