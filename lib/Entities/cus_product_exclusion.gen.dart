class CusProductExclusion {
  int idProductExclusion;
  int idDealer;
  int idRoute;
  int idCustomer;
  int idSalesOffice;
  
  CusProductExclusion({
    this.idProductExclusion,
    this.idDealer,
    this.idRoute,
    this.idCustomer,
    this.idSalesOffice,
  });

  static CusProductExclusion fromMap(Map<String, dynamic> json) {
    return CusProductExclusion()
      ..idProductExclusion = json['idProductExclusion'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductExclusion': idProductExclusion,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idSalesOffice': idSalesOffice,
      };
}