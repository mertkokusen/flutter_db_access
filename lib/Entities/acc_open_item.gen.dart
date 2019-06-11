class AccOpenItem {
  int idOpenItem;
  int idSalesOrg;
  int idCustomer;
  int idMainCustomer;
  int idAgent;
  String dsAgent;
  String dsDocumentNumber;
  String dsInvoiceNumber;
  int idContract;
  DateTime dtPosted;
  DateTime dtDue;
  int mtAmount;
  int mtUnclosedAmount;
  bool flAllowCorrection;
  
  AccOpenItem({
    this.idOpenItem,
    this.idSalesOrg,
    this.idCustomer,
    this.idMainCustomer,
    this.idAgent,
    this.dsAgent,
    this.dsDocumentNumber,
    this.dsInvoiceNumber,
    this.idContract,
    this.dtPosted,
    this.dtDue,
    this.mtAmount,
    this.mtUnclosedAmount,
    this.flAllowCorrection,
  });

  static AccOpenItem fromMap(Map<String, dynamic> json) {
    return AccOpenItem()
      ..idOpenItem = json['idOpenItem'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idAgent = json['idAgent'] as int
      ..dsAgent = json['dsAgent'] as String
      ..dsDocumentNumber = json['dsDocumentNumber'] as String
      ..dsInvoiceNumber = json['dsInvoiceNumber'] as String
      ..idContract = json['idContract'] as int
      ..dtPosted = json['dtPosted'] == null ? null : DateTime.parse(json['dtPosted'] as String)
      ..dtDue = json['dtDue'] == null ? null : DateTime.parse(json['dtDue'] as String)
      ..mtAmount = json['mtAmount'] as int
      ..mtUnclosedAmount = json['mtUnclosedAmount'] as int
      ..flAllowCorrection = json['flAllowCorrection'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOpenItem': idOpenItem,
        'idSalesOrg': idSalesOrg,
        'idCustomer': idCustomer,
        'idMainCustomer': idMainCustomer,
        'idAgent': idAgent,
        'dsAgent': dsAgent,
        'dsDocumentNumber': dsDocumentNumber,
        'dsInvoiceNumber': dsInvoiceNumber,
        'idContract': idContract,
        'dtPosted': dtPosted?.toIso8601String(),
        'dtDue': dtDue?.toIso8601String(),
        'mtAmount': mtAmount,
        'mtUnclosedAmount': mtUnclosedAmount,
        'flAllowCorrection': flAllowCorrection,
      };
}