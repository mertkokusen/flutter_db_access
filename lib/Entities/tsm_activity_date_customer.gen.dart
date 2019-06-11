class TsmActivityDateCustomer {
  int idActivityDateCustomer;
  int idActivityDate;
  int idCustomer;
  int idVisit;
  String dsUniqueKey;
  String dsActivityDateUniqueKey;
  bool vrFlSent;
  
  TsmActivityDateCustomer({
    this.idActivityDateCustomer,
    this.idActivityDate,
    this.idCustomer,
    this.idVisit,
    this.dsUniqueKey,
    this.dsActivityDateUniqueKey,
    this.vrFlSent,
  });

  static TsmActivityDateCustomer fromMap(Map<String, dynamic> json) {
    return TsmActivityDateCustomer()
      ..idActivityDateCustomer = json['idActivityDateCustomer'] as int
      ..idActivityDate = json['idActivityDate'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityDateCustomer': idActivityDateCustomer,
        'idActivityDate': idActivityDate,
        'idCustomer': idCustomer,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'vrFlSent': vrFlSent,
      };
}