class CusRoute {
  int idRoute;
  String dsRoute;
  int idHierarchy;
  int idSalesOrg;
  String dsSalesOrgErpCode;
  int idRouteBusinessType;
  int idRouteChannelType;
  bool flHasMultipleVisitType;
  int idFaceCall;
  int mtUtcOffset;
  String dsErpCode;
  int idRouteCoverage;
  bool flCanSeeOthers;
  bool flOthersCanSee;
  
  CusRoute({
    this.idRoute,
    this.dsRoute,
    this.idHierarchy,
    this.idSalesOrg,
    this.dsSalesOrgErpCode,
    this.idRouteBusinessType,
    this.idRouteChannelType,
    this.flHasMultipleVisitType,
    this.idFaceCall,
    this.mtUtcOffset,
    this.dsErpCode,
    this.idRouteCoverage,
    this.flCanSeeOthers,
    this.flOthersCanSee,
  });

  static CusRoute fromMap(Map<String, dynamic> json) {
    return CusRoute()
      ..idRoute = json['idRoute'] as int
      ..dsRoute = json['dsRoute'] as String
      ..idHierarchy = json['idHierarchy'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..dsSalesOrgErpCode = json['dsSalesOrgErpCode'] as String
      ..idRouteBusinessType = json['idRouteBusinessType'] as int
      ..idRouteChannelType = json['idRouteChannelType'] as int
      ..flHasMultipleVisitType = json['flHasMultipleVisitType'] == 1 ? true : false
      ..idFaceCall = json['idFaceCall'] as int
      ..mtUtcOffset = json['mtUtcOffset'] as int
      ..dsErpCode = json['dsErpCode'] as String
      ..idRouteCoverage = json['idRouteCoverage'] as int
      ..flCanSeeOthers = json['flCanSeeOthers'] == 1 ? true : false
      ..flOthersCanSee = json['flOthersCanSee'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRoute': idRoute,
        'dsRoute': dsRoute,
        'idHierarchy': idHierarchy,
        'idSalesOrg': idSalesOrg,
        'dsSalesOrgErpCode': dsSalesOrgErpCode,
        'idRouteBusinessType': idRouteBusinessType,
        'idRouteChannelType': idRouteChannelType,
        'flHasMultipleVisitType': flHasMultipleVisitType,
        'idFaceCall': idFaceCall,
        'mtUtcOffset': mtUtcOffset,
        'dsErpCode': dsErpCode,
        'idRouteCoverage': idRouteCoverage,
        'flCanSeeOthers': flCanSeeOthers,
        'flOthersCanSee': flOthersCanSee,
      };
}