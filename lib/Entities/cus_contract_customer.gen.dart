class CusContractCustomer {
  int idContractCustomer;
  int idContract;
  int idCustomer;
  bool flPayer;
  int idPaymentType;
  
  CusContractCustomer({
    this.idContractCustomer,
    this.idContract,
    this.idCustomer,
    this.flPayer,
    this.idPaymentType,
  });

  static CusContractCustomer fromMap(Map<String, dynamic> json) {
    return CusContractCustomer()
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