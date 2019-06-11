class PdaVisit {
  int idVisit;
  int idCompany;
  int idDealer;
  int idUser;
  int idCustomer;
  int idRoute;
  int idSalesOrg;
  int idVisitList;
  int idVisitListDetail;
  int idVisitType;
  DateTime dtVisitStart;
  DateTime dtVisitStartReal;
  DateTime dtVisitEnd;
  DateTime dtVisitEndReal;
  int idNoSalesReason;
  int mtOrder;
  int idNoGpsReason;
  int mtLatitude;
  int mtLongitude;
  int mtLatitudeEnd;
  int mtLongitudeEnd;
  bool flExclusiveGps;
  int mtExclusiveLatitude;
  int mtExclusiveLongitude;
  bool flCompleted;
  int mtVisitDistance;
  bool flVirtualCustomer;
  String dsUniqueKey;
  bool vrFlSent;
  int idActivity;
  String dsActivityUniqueKey;
  int idActivityDate;
  String dsActivityDateUniqueKey;
  bool flFromWeb;
  
  PdaVisit({
    this.idVisit,
    this.idCompany,
    this.idDealer,
    this.idUser,
    this.idCustomer,
    this.idRoute,
    this.idSalesOrg,
    this.idVisitList,
    this.idVisitListDetail,
    this.idVisitType,
    this.dtVisitStart,
    this.dtVisitStartReal,
    this.dtVisitEnd,
    this.dtVisitEndReal,
    this.idNoSalesReason,
    this.mtOrder,
    this.idNoGpsReason,
    this.mtLatitude,
    this.mtLongitude,
    this.mtLatitudeEnd,
    this.mtLongitudeEnd,
    this.flExclusiveGps,
    this.mtExclusiveLatitude,
    this.mtExclusiveLongitude,
    this.flCompleted,
    this.mtVisitDistance,
    this.flVirtualCustomer,
    this.dsUniqueKey,
    this.vrFlSent,
    this.idActivity,
    this.dsActivityUniqueKey,
    this.idActivityDate,
    this.dsActivityDateUniqueKey,
    this.flFromWeb,
  });

  static PdaVisit fromMap(Map<String, dynamic> json) {
    return PdaVisit()
      ..idVisit = json['idVisit'] as int
      ..idCompany = json['idCompany'] as int
      ..idDealer = json['idDealer'] as int
      ..idUser = json['idUser'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idRoute = json['idRoute'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idVisitList = json['idVisitList'] as int
      ..idVisitListDetail = json['idVisitListDetail'] as int
      ..idVisitType = json['idVisitType'] as int
      ..dtVisitStart = json['dtVisitStart'] == null ? null : DateTime.parse(json['dtVisitStart'] as String)
      ..dtVisitStartReal = json['dtVisitStartReal'] == null ? null : DateTime.parse(json['dtVisitStartReal'] as String)
      ..dtVisitEnd = json['dtVisitEnd'] == null ? null : DateTime.parse(json['dtVisitEnd'] as String)
      ..dtVisitEndReal = json['dtVisitEndReal'] == null ? null : DateTime.parse(json['dtVisitEndReal'] as String)
      ..idNoSalesReason = json['idNoSalesReason'] as int
      ..mtOrder = json['mtOrder'] as int
      ..idNoGpsReason = json['idNoGpsReason'] as int
      ..mtLatitude = json['mtLatitude'] as int
      ..mtLongitude = json['mtLongitude'] as int
      ..mtLatitudeEnd = json['mtLatitudeEnd'] as int
      ..mtLongitudeEnd = json['mtLongitudeEnd'] as int
      ..flExclusiveGps = json['flExclusiveGps'] == 1 ? true : false
      ..mtExclusiveLatitude = json['mtExclusiveLatitude'] as int
      ..mtExclusiveLongitude = json['mtExclusiveLongitude'] as int
      ..flCompleted = json['flCompleted'] == 1 ? true : false
      ..mtVisitDistance = json['mtVisitDistance'] as int
      ..flVirtualCustomer = json['flVirtualCustomer'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..idActivity = json['idActivity'] as int
      ..dsActivityUniqueKey = json['dsActivityUniqueKey'] as String
      ..idActivityDate = json['idActivityDate'] as int
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..flFromWeb = json['flFromWeb'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisit': idVisit,
        'idCompany': idCompany,
        'idDealer': idDealer,
        'idUser': idUser,
        'idCustomer': idCustomer,
        'idRoute': idRoute,
        'idSalesOrg': idSalesOrg,
        'idVisitList': idVisitList,
        'idVisitListDetail': idVisitListDetail,
        'idVisitType': idVisitType,
        'dtVisitStart': dtVisitStart?.toIso8601String(),
        'dtVisitStartReal': dtVisitStartReal?.toIso8601String(),
        'dtVisitEnd': dtVisitEnd?.toIso8601String(),
        'dtVisitEndReal': dtVisitEndReal?.toIso8601String(),
        'idNoSalesReason': idNoSalesReason,
        'mtOrder': mtOrder,
        'idNoGpsReason': idNoGpsReason,
        'mtLatitude': mtLatitude,
        'mtLongitude': mtLongitude,
        'mtLatitudeEnd': mtLatitudeEnd,
        'mtLongitudeEnd': mtLongitudeEnd,
        'flExclusiveGps': flExclusiveGps,
        'mtExclusiveLatitude': mtExclusiveLatitude,
        'mtExclusiveLongitude': mtExclusiveLongitude,
        'flCompleted': flCompleted,
        'mtVisitDistance': mtVisitDistance,
        'flVirtualCustomer': flVirtualCustomer,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'idActivity': idActivity,
        'dsActivityUniqueKey': dsActivityUniqueKey,
        'idActivityDate': idActivityDate,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'flFromWeb': flFromWeb,
      };
}