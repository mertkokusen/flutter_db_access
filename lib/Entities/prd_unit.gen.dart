class PrdUnit {
  int idUnit;
  String dsUnit;
  String dsUnitShort;
  bool flAllowDecimal;
  String dsDealerCode;
  String dsErpCode;
  
  PrdUnit({
    this.idUnit,
    this.dsUnit,
    this.dsUnitShort,
    this.flAllowDecimal,
    this.dsDealerCode,
    this.dsErpCode,
  });

  static PrdUnit fromMap(Map<String, dynamic> json) {
    return PrdUnit()
      ..idUnit = json['idUnit'] as int
      ..dsUnit = json['dsUnit'] as String
      ..dsUnitShort = json['dsUnitShort'] as String
      ..flAllowDecimal = json['flAllowDecimal'] == 1 ? true : false
      ..dsDealerCode = json['dsDealerCode'] as String
      ..dsErpCode = json['dsErpCode'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idUnit': idUnit,
        'dsUnit': dsUnit,
        'dsUnitShort': dsUnitShort,
        'flAllowDecimal': flAllowDecimal,
        'dsDealerCode': dsDealerCode,
        'dsErpCode': dsErpCode,
      };
}