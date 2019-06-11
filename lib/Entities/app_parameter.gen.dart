class AppParameter {
  int idParameter;
  String dsKey;
  String dsValue;
  int mtValue;
  DateTime dtValue;
  bool flInternal;
  
  AppParameter({
    this.idParameter,
    this.dsKey,
    this.dsValue,
    this.mtValue,
    this.dtValue,
    this.flInternal,
  });

  static AppParameter fromMap(Map<String, dynamic> json) {
    return AppParameter()
      ..idParameter = json['idParameter'] as int
      ..dsKey = json['dsKey'] as String
      ..dsValue = json['dsValue'] as String
      ..mtValue = json['mtValue'] as int
      ..dtValue = json['dtValue'] == null ? null : DateTime.parse(json['dtValue'] as String)
      ..flInternal = json['flInternal'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idParameter': idParameter,
        'dsKey': dsKey,
        'dsValue': dsValue,
        'mtValue': mtValue,
        'dtValue': dtValue?.toIso8601String(),
        'flInternal': flInternal,
      };
}