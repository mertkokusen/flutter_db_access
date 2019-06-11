class TsmActivityDate {
  int idActivityDate;
  int idActivity;
  DateTime dtActivity;
  DateTime dtDayStart;
  DateTime dtDayEnd;
  bool vrFlSent;
  String dsUniqueKey;
  String dsActivityUniqueKey;
  bool flFromWeb;
  bool valid;
  
  TsmActivityDate({
    this.idActivityDate,
    this.idActivity,
    this.dtActivity,
    this.dtDayStart,
    this.dtDayEnd,
    this.vrFlSent,
    this.dsUniqueKey,
    this.dsActivityUniqueKey,
    this.flFromWeb,
    this.valid,
  });

  static TsmActivityDate fromMap(Map<String, dynamic> json) {
    return TsmActivityDate()
      ..idActivityDate = json['idActivityDate'] as int
      ..idActivity = json['idActivity'] as int
      ..dtActivity = json['dtActivity'] == null ? null : DateTime.parse(json['dtActivity'] as String)
      ..dtDayStart = json['dtDayStart'] == null ? null : DateTime.parse(json['dtDayStart'] as String)
      ..dtDayEnd = json['dtDayEnd'] == null ? null : DateTime.parse(json['dtDayEnd'] as String)
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityUniqueKey = json['dsActivityUniqueKey'] as String
      ..flFromWeb = json['flFromWeb'] == 1 ? true : false
      ..valid = json['valid'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityDate': idActivityDate,
        'idActivity': idActivity,
        'dtActivity': dtActivity?.toIso8601String(),
        'dtDayStart': dtDayStart?.toIso8601String(),
        'dtDayEnd': dtDayEnd?.toIso8601String(),
        'vrFlSent': vrFlSent,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityUniqueKey': dsActivityUniqueKey,
        'flFromWeb': flFromWeb,
        'valid': valid,
      };
}