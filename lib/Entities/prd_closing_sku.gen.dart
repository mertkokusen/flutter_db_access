class PrdClosingSku {
  int idClosingSku;
  int idSalesOffice;
  int idChannel;
  int idProduct;
  
  PrdClosingSku({
    this.idClosingSku,
    this.idSalesOffice,
    this.idChannel,
    this.idProduct,
  });

  static PrdClosingSku fromMap(Map<String, dynamic> json) {
    return PrdClosingSku()
      ..idClosingSku = json['idClosingSku'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
      ..idChannel = json['idChannel'] as int
      ..idProduct = json['idProduct'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idClosingSku': idClosingSku,
        'idSalesOffice': idSalesOffice,
        'idChannel': idChannel,
        'idProduct': idProduct,
      };
}