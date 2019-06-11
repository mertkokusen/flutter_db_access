class CusCustomerSalesUnitDetail {
  int idCustomerSalesUnitDetail;
  int idCustomerSalesUnit;
  int idUnit;
  
  CusCustomerSalesUnitDetail({
    this.idCustomerSalesUnitDetail,
    this.idCustomerSalesUnit,
    this.idUnit,
  });

  static CusCustomerSalesUnitDetail fromMap(Map<String, dynamic> json) {
    return CusCustomerSalesUnitDetail()
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