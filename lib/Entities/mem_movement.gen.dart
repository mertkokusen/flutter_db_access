class MemMovement {
  int idMovement;
  DateTime dtMovement;
  int idCustomerSource;
  int idCustomerTarget;
  int idRoute;
  int idMem;
  int idErpStatus;
  
  MemMovement({
    this.idMovement,
    this.dtMovement,
    this.idCustomerSource,
    this.idCustomerTarget,
    this.idRoute,
    this.idMem,
    this.idErpStatus,
  });

  static MemMovement fromMap(Map<String, dynamic> json) {
    return MemMovement()
      ..idMovement = json['idMovement'] as int
      ..dtMovement = json['dtMovement'] == null ? null : DateTime.parse(json['dtMovement'] as String)
      ..idCustomerSource = json['idCustomerSource'] as int
      ..idCustomerTarget = json['idCustomerTarget'] as int
      ..idRoute = json['idRoute'] as int
      ..idMem = json['idMem'] as int
      ..idErpStatus = json['idErpStatus'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idMovement': idMovement,
        'dtMovement': dtMovement?.toIso8601String(),
        'idCustomerSource': idCustomerSource,
        'idCustomerTarget': idCustomerTarget,
        'idRoute': idRoute,
        'idMem': idMem,
        'idErpStatus': idErpStatus,
      };
}