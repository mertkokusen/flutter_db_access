class MemTransactionType {
  int idTransactionType;
  String dsTransactionType;
  
  MemTransactionType({
    this.idTransactionType,
    this.dsTransactionType,
  });

  static MemTransactionType fromMap(Map<String, dynamic> json) {
    return MemTransactionType()
      ..idTransactionType = json['idTransactionType'] as int
      ..dsTransactionType = json['dsTransactionType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionType': idTransactionType,
        'dsTransactionType': dsTransactionType,
      };
}