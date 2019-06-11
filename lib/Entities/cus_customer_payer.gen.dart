class CusCustomerPayer {
  int idCustomerPayer;
  int idCustomer;
  int idCustomerMain;
  
  CusCustomerPayer({
    this.idCustomerPayer,
    this.idCustomer,
    this.idCustomerMain,
  });

  static CusCustomerPayer fromMap(Map<String, dynamic> json) {
    return CusCustomerPayer()
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