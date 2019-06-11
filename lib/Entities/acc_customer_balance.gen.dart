class AccCustomerBalance {
  int idCustomer;
  int mtDebit;
  int mtCredit;
  int mtOverduedAmount;
  
  AccCustomerBalance({
    this.idCustomer,
    this.mtDebit,
    this.mtCredit,
    this.mtOverduedAmount,
  });

  static AccCustomerBalance fromMap(Map<String, dynamic> json) {
    return AccCustomerBalance()
      ..idCustomer = json['idCustomer'] as int
      ..mtDebit = json['mtDebit'] as int
      ..mtCredit = json['mtCredit'] as int
      ..mtOverduedAmount = json['mtOverduedAmount'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomer': idCustomer,
        'mtDebit': mtDebit,
        'mtCredit': mtCredit,
        'mtOverduedAmount': mtOverduedAmount,
      };
}