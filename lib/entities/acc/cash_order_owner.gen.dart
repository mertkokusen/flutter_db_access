class CashOrderOwner {
  int idCashOrderOwner;
  String dsCashOrderOwner;
  
  CashOrderOwner({
    this.idCashOrderOwner,
    this.dsCashOrderOwner,
  });

  static CashOrderOwner fromMap(Map<String, dynamic> json) {
    return CashOrderOwner()
      ..idCashOrderOwner = json['idCashOrderOwner'] as int
      ..dsCashOrderOwner = json['dsCashOrderOwner'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashOrderOwner': idCashOrderOwner,
        'dsCashOrderOwner': dsCashOrderOwner,
      };
}