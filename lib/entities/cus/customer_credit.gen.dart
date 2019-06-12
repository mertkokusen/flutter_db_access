class CustomerCredit {
  int idCustomerCredit;
  int idCustomer;
  String dsCreditControlArea;
  int mtCreditLimit;
  int mtExposure;
  
  CustomerCredit({
    this.idCustomerCredit,
    this.idCustomer,
    this.dsCreditControlArea,
    this.mtCreditLimit,
    this.mtExposure,
  });

  static CustomerCredit fromMap(Map<String, dynamic> json) {
    return CustomerCredit()
      ..idCustomerCredit = json['idCustomerCredit'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dsCreditControlArea = json['dsCreditControlArea'] as String
      ..mtCreditLimit = json['mtCreditLimit'] as int
      ..mtExposure = json['mtExposure'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerCredit': idCustomerCredit,
        'idCustomer': idCustomer,
        'dsCreditControlArea': dsCreditControlArea,
        'mtCreditLimit': mtCreditLimit,
        'mtExposure': mtExposure,
      };
}