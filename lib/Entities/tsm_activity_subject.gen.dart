class TsmActivitySubject {
  int idActivitySubject;
  DateTime dtInsert;
  int idUserInsert;
  DateTime dtUpdate;
  int idUserUpdate;
  bool valid;
  bool flActive;
  int idCompany;
  String dsActivitySubject;
  
  TsmActivitySubject({
    this.idActivitySubject,
    this.dtInsert,
    this.idUserInsert,
    this.dtUpdate,
    this.idUserUpdate,
    this.valid,
    this.flActive,
    this.idCompany,
    this.dsActivitySubject,
  });

  static TsmActivitySubject fromMap(Map<String, dynamic> json) {
    return TsmActivitySubject()
      ..idActivitySubject = json['idActivitySubject'] as int
      ..dtInsert = json['dtInsert'] == null ? null : DateTime.parse(json['dtInsert'] as String)
      ..idUserInsert = json['idUserInsert'] as int
      ..dtUpdate = json['dtUpdate'] == null ? null : DateTime.parse(json['dtUpdate'] as String)
      ..idUserUpdate = json['idUserUpdate'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..flActive = json['flActive'] == 1 ? true : false
      ..idCompany = json['idCompany'] as int
      ..dsActivitySubject = json['dsActivitySubject'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivitySubject': idActivitySubject,
        'dtInsert': dtInsert?.toIso8601String(),
        'idUserInsert': idUserInsert,
        'dtUpdate': dtUpdate?.toIso8601String(),
        'idUserUpdate': idUserUpdate,
        'valid': valid,
        'flActive': flActive,
        'idCompany': idCompany,
        'dsActivitySubject': dsActivitySubject,
      };
}