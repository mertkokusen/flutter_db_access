class CusNoSalesReason {
  int idNoSalesReason;
  String dsNoSalesReason;
  
  CusNoSalesReason({
    this.idNoSalesReason,
    this.dsNoSalesReason,
  });

  static CusNoSalesReason fromMap(Map<String, dynamic> json) {
    return CusNoSalesReason()
      ..idNoSalesReason = json['idNoSalesReason'] as int
      ..dsNoSalesReason = json['dsNoSalesReason'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idNoSalesReason': idNoSalesReason,
        'dsNoSalesReason': dsNoSalesReason,
      };
}