class PosTransactionType {
  int idTransactionType;
  String dsTransactionType;
  
  PosTransactionType({
    this.idTransactionType,
    this.dsTransactionType,
  });

  static PosTransactionType fromMap(Map<String, dynamic> json) {
    return PosTransactionType()
      ..idTransactionType = json['idTransactionType'] as int
      ..dsTransactionType = json['dsTransactionType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionType': idTransactionType,
        'dsTransactionType': dsTransactionType,
      };
}