class PdaVisitLog {
  int idVisitLog;
  int idActionType;
  int idTimeSource;
  int mtUtcOffset;
  bool flBlockVisitRealTime;
  int mtGpsTime;
  DateTime dtServerTime;
  DateTime dtDeviceTime;
  int mtSystemElapsed;
  int mtServerElapsed;
  String dsVisitUniqueKey;
  String dsUniqueKey;
  bool vrFlSent;
  
  PdaVisitLog({
    this.idVisitLog,
    this.idActionType,
    this.idTimeSource,
    this.mtUtcOffset,
    this.flBlockVisitRealTime,
    this.mtGpsTime,
    this.dtServerTime,
    this.dtDeviceTime,
    this.mtSystemElapsed,
    this.mtServerElapsed,
    this.dsVisitUniqueKey,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static PdaVisitLog fromMap(Map<String, dynamic> json) {
    return PdaVisitLog()
      ..idVisitLog = json['idVisitLog'] as int
      ..idActionType = json['idActionType'] as int
      ..idTimeSource = json['idTimeSource'] as int
      ..mtUtcOffset = json['mtUtcOffset'] as int
      ..flBlockVisitRealTime = json['flBlockVisitRealTime'] == 1 ? true : false
      ..mtGpsTime = json['mtGpsTime'] as int
      ..dtServerTime = json['dtServerTime'] == null ? null : DateTime.parse(json['dtServerTime'] as String)
      ..dtDeviceTime = json['dtDeviceTime'] == null ? null : DateTime.parse(json['dtDeviceTime'] as String)
      ..mtSystemElapsed = json['mtSystemElapsed'] as int
      ..mtServerElapsed = json['mtServerElapsed'] as int
      ..dsVisitUniqueKey = json['dsVisitUniqueKey'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitLog': idVisitLog,
        'idActionType': idActionType,
        'idTimeSource': idTimeSource,
        'mtUtcOffset': mtUtcOffset,
        'flBlockVisitRealTime': flBlockVisitRealTime,
        'mtGpsTime': mtGpsTime,
        'dtServerTime': dtServerTime?.toIso8601String(),
        'dtDeviceTime': dtDeviceTime?.toIso8601String(),
        'mtSystemElapsed': mtSystemElapsed,
        'mtServerElapsed': mtServerElapsed,
        'dsVisitUniqueKey': dsVisitUniqueKey,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}