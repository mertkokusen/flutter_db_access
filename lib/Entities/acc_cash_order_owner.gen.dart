class AccCashOrderOwner {
  int idCashOrderOwner;
  String dsCashOrderOwner;
  
  AccCashOrderOwner({
    this.idCashOrderOwner,
    this.dsCashOrderOwner,
  });

  static AccCashOrderOwner fromMap(Map<String, dynamic> json) {
    return AccCashOrderOwner()
      ..idCashOrderOwner = json['idCashOrderOwner'] as int
      ..dsCashOrderOwner = json['dsCashOrderOwner'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashOrderOwner': idCashOrderOwner,
        'dsCashOrderOwner': dsCashOrderOwner,
      };
}