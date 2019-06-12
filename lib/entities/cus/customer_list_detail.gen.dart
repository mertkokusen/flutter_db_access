class CustomerListDetail {
  int idCustomerListDetail;
  int idCustomerList;
  int idCustomer;
  
  CustomerListDetail({
    this.idCustomerListDetail,
    this.idCustomerList,
    this.idCustomer,
  });

  static CustomerListDetail fromMap(Map<String, dynamic> json) {
    return CustomerListDetail()
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