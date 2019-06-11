class CshInvoice {
  int idCashInvoice;
  int idVisit;
  String dsErpInvoice;
  DateTime dtInvoice;
  String dsInvoiceCustomerName;
  bool flInvoiceAllowCorrection;
  int idInvoiceState;
  
  CshInvoice({
    this.idCashInvoice,
    this.idVisit,
    this.dsErpInvoice,
    this.dtInvoice,
    this.dsInvoiceCustomerName,
    this.flInvoiceAllowCorrection,
    this.idInvoiceState,
  });

  static CshInvoice fromMap(Map<String, dynamic> json) {
    return CshInvoice()
      ..idCashInvoice = json['idCashInvoice'] as int
      ..idVisit = json['idVisit'] as int
      ..dsErpInvoice = json['dsErpInvoice'] as String
      ..dtInvoice = json['dtInvoice'] == null ? null : DateTime.parse(json['dtInvoice'] as String)
      ..dsInvoiceCustomerName = json['dsInvoiceCustomerName'] as String
      ..flInvoiceAllowCorrection = json['flInvoiceAllowCorrection'] == 1 ? true : false
      ..idInvoiceState = json['idInvoiceState'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashInvoice': idCashInvoice,
        'idVisit': idVisit,
        'dsErpInvoice': dsErpInvoice,
        'dtInvoice': dtInvoice?.toIso8601String(),
        'dsInvoiceCustomerName': dsInvoiceCustomerName,
        'flInvoiceAllowCorrection': flInvoiceAllowCorrection,
        'idInvoiceState': idInvoiceState,
      };
}