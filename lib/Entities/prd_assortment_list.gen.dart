class PrdAssortmentList {
  int idAssortmentList;
  String dsAssortmentList;
  int idAssortmentListType;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  int idSalesOrg;
  int idChannel3;
  int idCustomerSalesGroup;
  int idSalesOffice;
  int idSHierarchy;
  int idCustomer;
  int idYHierarchy;
  String dsDescription;
  
  PrdAssortmentList({
    this.idAssortmentList,
    this.dsAssortmentList,
    this.idAssortmentListType,
    this.dtValidFrom,
    this.dtValidTo,
    this.idSalesOrg,
    this.idChannel3,
    this.idCustomerSalesGroup,
    this.idSalesOffice,
    this.idSHierarchy,
    this.idCustomer,
    this.idYHierarchy,
    this.dsDescription,
  });

  static PrdAssortmentList fromMap(Map<String, dynamic> json) {
    return PrdAssortmentList()
      ..idAssortmentList = json['idAssortmentList'] as int
      ..dsAssortmentList = json['dsAssortmentList'] as String
      ..idAssortmentListType = json['idAssortmentListType'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idChannel3 = json['idChannel3'] as int
      ..idCustomerSalesGroup = json['idCustomerSalesGroup'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
      ..idSHierarchy = json['idSHierarchy'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idYHierarchy = json['idYHierarchy'] as int
      ..dsDescription = json['dsDescription'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAssortmentList': idAssortmentList,
        'dsAssortmentList': dsAssortmentList,
        'idAssortmentListType': idAssortmentListType,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
        'idSalesOrg': idSalesOrg,
        'idChannel3': idChannel3,
        'idCustomerSalesGroup': idCustomerSalesGroup,
        'idSalesOffice': idSalesOffice,
        'idSHierarchy': idSHierarchy,
        'idCustomer': idCustomer,
        'idYHierarchy': idYHierarchy,
        'dsDescription': dsDescription,
      };
}