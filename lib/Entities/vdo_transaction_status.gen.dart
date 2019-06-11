class VdoTransactionStatus {
  int idTransactionStatus;
  String dsTransactionStatus;
  
  VdoTransactionStatus({
    this.idTransactionStatus,
    this.dsTransactionStatus,
  });

  static VdoTransactionStatus fromMap(Map<String, dynamic> json) {
    return VdoTransactionStatus()
      ..idTransactionStatus = json['idTransactionStatus'] as int
      ..dsTransactionStatus = json['dsTransactionStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionStatus': idTransactionStatus,
        'dsTransactionStatus': dsTransactionStatus,
      };
}