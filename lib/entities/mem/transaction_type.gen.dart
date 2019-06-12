class TransactionType {
  int idTransactionType;
  String dsTransactionType;
  
  TransactionType({
    this.idTransactionType,
    this.dsTransactionType,
  });

  static TransactionType fromMap(Map<String, dynamic> json) {
    return TransactionType()
      ..idTransactionType = json['idTransactionType'] as int
      ..dsTransactionType = json['dsTransactionType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionType': idTransactionType,
        'dsTransactionType': dsTransactionType,
      };
}