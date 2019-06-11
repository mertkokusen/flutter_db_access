class VdoTransactionAttribute {
  int idTransactionAttribute;
  int idTransaction;
  int idAttribute;
  int idValue;
  String dsAnswer;
  int mtAnswer;
  DateTime dtAnswer;
  bool valid;
  String dsUniqueKey;
  
  VdoTransactionAttribute({
    this.idTransactionAttribute,
    this.idTransaction,
    this.idAttribute,
    this.idValue,
    this.dsAnswer,
    this.mtAnswer,
    this.dtAnswer,
    this.valid,
    this.dsUniqueKey,
  });

  static VdoTransactionAttribute fromMap(Map<String, dynamic> json) {
    return VdoTransactionAttribute()
      ..idTransactionAttribute = json['idTransactionAttribute'] as int
      ..idTransaction = json['idTransaction'] as int
      ..idAttribute = json['idAttribute'] as int
      ..idValue = json['idValue'] as int
      ..dsAnswer = json['dsAnswer'] as String
      ..mtAnswer = json['mtAnswer'] as int
      ..dtAnswer = json['dtAnswer'] == null ? null : DateTime.parse(json['dtAnswer'] as String)
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionAttribute': idTransactionAttribute,
        'idTransaction': idTransaction,
        'idAttribute': idAttribute,
        'idValue': idValue,
        'dsAnswer': dsAnswer,
        'mtAnswer': mtAnswer,
        'dtAnswer': dtAnswer?.toIso8601String(),
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
      };
}