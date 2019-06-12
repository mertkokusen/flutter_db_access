class CustomerPayer {
  int idCustomerPayer;
  int idCustomer;
  int idCustomerMain;
  
  CustomerPayer({
    this.idCustomerPayer,
    this.idCustomer,
    this.idCustomerMain,
  });

  static CustomerPayer fromMap(Map<String, dynamic> json) {
    return CustomerPayer()
      ..idCustomerPayer = json['idCustomerPayer'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idCustomerMain = json['idCustomerMain'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerPayer': idCustomerPayer,
        'idCustomer': idCustomer,
        'idCustomerMain': idCustomerMain,
      };
}