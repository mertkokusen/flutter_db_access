class StoCustomerBalance {
  int idCustomerBalance;
  int idDealer;
  int idRoute;
  int idCustomer;
  int idVisit;
  DateTime dtCounting;
  String dsUniqueKey;
  bool vrFlSent;
  
  StoCustomerBalance({
    this.idCustomerBalance,
    this.idDealer,
    this.idRoute,
    this.idCustomer,
    this.idVisit,
    this.dtCounting,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static StoCustomerBalance fromMap(Map<String, dynamic> json) {
    return StoCustomerBalance()
      ..idCustomerBalance = json['idCustomerBalance'] as int
      ..idDealer = json['idDealer'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisit = json['idVisit'] as int
      ..dtCounting = json['dtCounting'] == null ? null : DateTime.parse(json['dtCounting'] as String)
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerBalance': idCustomerBalance,
        'idDealer': idDealer,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idVisit': idVisit,
        'dtCounting': dtCounting?.toIso8601String(),
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}