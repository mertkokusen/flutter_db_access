class CustomerList {
  int idCustomerList;
  int idCustomerListType;
  int idUserCreated;
  String dsCustomerList;
  
  CustomerList({
    this.idCustomerList,
    this.idCustomerListType,
    this.idUserCreated,
    this.dsCustomerList,
  });

  static CustomerList fromMap(Map<String, dynamic> json) {
    return CustomerList()
      ..idCustomerList = json['idCustomerList'] as int
      ..idCustomerListType = json['idCustomerListType'] as int
      ..idUserCreated = json['idUserCreated'] as int
      ..dsCustomerList = json['dsCustomerList'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerList': idCustomerList,
        'idCustomerListType': idCustomerListType,
        'idUserCreated': idUserCreated,
        'dsCustomerList': dsCustomerList,
      };
}