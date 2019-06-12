class ContractCustomer {
  int idContractCustomer;
  int idContract;
  int idCustomer;
  bool flPayer;
  int idPaymentType;
  
  ContractCustomer({
    this.idContractCustomer,
    this.idContract,
    this.idCustomer,
    this.flPayer,
    this.idPaymentType,
  });

  static ContractCustomer fromMap(Map<String, dynamic> json) {
    return ContractCustomer()
      ..idContractCustomer = json['idContractCustomer'] as int
      ..idContract = json['idContract'] as int
      ..idCustomer = json['idCustomer'] as int
      ..flPayer = json['flPayer'] == 1 ? true : false
      ..idPaymentType = json['idPaymentType'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idContractCustomer': idContractCustomer,
        'idContract': idContract,
        'idCustomer': idCustomer,
        'flPayer': flPayer,
        'idPaymentType': idPaymentType,
      };
}