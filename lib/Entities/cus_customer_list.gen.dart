class CusCustomerList {
  int idCustomerList;
  int idCustomerListType;
  int idUserCreated;
  String dsCustomerList;
  
  CusCustomerList({
    this.idCustomerList,
    this.idCustomerListType,
    this.idUserCreated,
    this.dsCustomerList,
  });

  static CusCustomerList fromMap(Map<String, dynamic> json) {
    return CusCustomerList()
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