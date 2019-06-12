class NoSalesReason {
  int idNoSalesReason;
  String dsNoSalesReason;
  
  NoSalesReason({
    this.idNoSalesReason,
    this.dsNoSalesReason,
  });

  static NoSalesReason fromMap(Map<String, dynamic> json) {
    return NoSalesReason()
      ..idNoSalesReason = json['idNoSalesReason'] as int
      ..dsNoSalesReason = json['dsNoSalesReason'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idNoSalesReason': idNoSalesReason,
        'dsNoSalesReason': dsNoSalesReason,
      };
}