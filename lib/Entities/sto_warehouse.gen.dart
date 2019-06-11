class StoWarehouse {
  int idWarehouse;
  String dsWarehouse;
  
  StoWarehouse({
    this.idWarehouse,
    this.dsWarehouse,
  });

  static StoWarehouse fromMap(Map<String, dynamic> json) {
    return StoWarehouse()
      ..idWarehouse = json['idWarehouse'] as int
      ..dsWarehouse = json['dsWarehouse'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idWarehouse': idWarehouse,
        'dsWarehouse': dsWarehouse,
      };
}