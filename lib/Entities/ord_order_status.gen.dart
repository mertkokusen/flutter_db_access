class OrdOrderStatus {
  int idOrderStatus;
  String dsOrderStatus;
  
  OrdOrderStatus({
    this.idOrderStatus,
    this.dsOrderStatus,
  });

  static OrdOrderStatus fromMap(Map<String, dynamic> json) {
    return OrdOrderStatus()
      ..idOrderStatus = json['idOrderStatus'] as int
      ..dsOrderStatus = json['dsOrderStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrderStatus': idOrderStatus,
        'dsOrderStatus': dsOrderStatus,
      };
}