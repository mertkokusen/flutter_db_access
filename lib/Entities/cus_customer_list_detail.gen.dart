class CusCustomerListDetail {
  int idCustomerListDetail;
  int idCustomerList;
  int idCustomer;
  
  CusCustomerListDetail({
    this.idCustomerListDetail,
    this.idCustomerList,
    this.idCustomer,
  });

  static CusCustomerListDetail fromMap(Map<String, dynamic> json) {
    return CusCustomerListDetail()
      ..idCustomerListDetail = json['idCustomerListDetail'] as int
      ..idCustomerList = json['idCustomerList'] as int
      ..idCustomer = json['idCustomer'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerListDetail': idCustomerListDetail,
        'idCustomerList': idCustomerList,
        'idCustomer': idCustomer,
      };
}