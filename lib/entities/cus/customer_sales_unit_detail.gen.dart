class CustomerSalesUnitDetail {
  int idCustomerSalesUnitDetail;
  int idCustomerSalesUnit;
  int idUnit;
  
  CustomerSalesUnitDetail({
    this.idCustomerSalesUnitDetail,
    this.idCustomerSalesUnit,
    this.idUnit,
  });

  static CustomerSalesUnitDetail fromMap(Map<String, dynamic> json) {
    return CustomerSalesUnitDetail()
      ..idCustomerSalesUnitDetail = json['idCustomerSalesUnitDetail'] as int
      ..idCustomerSalesUnit = json['idCustomerSalesUnit'] as int
      ..idUnit = json['idUnit'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerSalesUnitDetail': idCustomerSalesUnitDetail,
        'idCustomerSalesUnit': idCustomerSalesUnit,
        'idUnit': idUnit,
      };
}