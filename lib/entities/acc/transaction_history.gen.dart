class TransactionHistory {
  int idTransactionHistory;
  int idCustomer;
  int idTransaction;
  DateTime dtTransaction;
  int idPaymentType;
  String dsDocNumber;
  int mtDebit;
  int mtCredit;
  int mtUnclosed;
  int idTransactionType;
  DateTime dtDue;
  int idSalesOrg;
  
  TransactionHistory({
    this.idTransactionHistory,
    this.idCustomer,
    this.idTransaction,
    this.dtTransaction,
    this.idPaymentType,
    this.dsDocNumber,
    this.mtDebit,
    this.mtCredit,
    this.mtUnclosed,
    this.idTransactionType,
    this.dtDue,
    this.idSalesOrg,
  });

  static TransactionHistory fromMap(Map<String, dynamic> json) {
    return TransactionHistory()
      ..idTransactionHistory = json['idTransactionHistory'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idTransaction = json['idTransaction'] as int
      ..dtTransaction = json['dtTransaction'] == null ? null : DateTime.parse(json['dtTransaction'] as String)
      ..idPaymentType = json['idPaymentType'] as int
      ..dsDocNumber = json['dsDocNumber'] as String
      ..mtDebit = json['mtDebit'] as int
      ..mtCredit = json['mtCredit'] as int
      ..mtUnclosed = json['mtUnclosed'] as int
      ..idTransactionType = json['idTransactionType'] as int
      ..dtDue = json['dtDue'] == null ? null : DateTime.parse(json['dtDue'] as String)
      ..idSalesOrg = json['idSalesOrg'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionHistory': idTransactionHistory,
        'idCustomer': idCustomer,
        'idTransaction': idTransaction,
        'dtTransaction': dtTransaction?.toIso8601String(),
        'idPaymentType': idPaymentType,
        'dsDocNumber': dsDocNumber,
        'mtDebit': mtDebit,
        'mtCredit': mtCredit,
        'mtUnclosed': mtUnclosed,
        'idTransactionType': idTransactionType,
        'dtDue': dtDue?.toIso8601String(),
        'idSalesOrg': idSalesOrg,
      };
}