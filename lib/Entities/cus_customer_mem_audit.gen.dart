class CusCustomerMemAudit {
  int idCustomerMemAudit;
  int idRoute;
  int idCustomer;
  
  CusCustomerMemAudit({
    this.idCustomerMemAudit,
    this.idRoute,
    this.idCustomer,
  });

  static CusCustomerMemAudit fromMap(Map<String, dynamic> json) {
    return CusCustomerMemAudit()
      ..idCustomerMemAudit = json['idCustomerMemAudit'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerMemAudit': idCustomerMemAudit,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
      };
}