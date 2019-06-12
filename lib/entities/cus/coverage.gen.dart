class Coverage {
  int idCoverage;
  int idCoverageType;
  int idCoveragePk;
  int idYLevel;
  int idYHierarchy;
  int idDistrict;
  int idDealerType;
  int idDealer;
  int idMainCustomer;
  int idCustomer;
  int idChannel1;
  int idChannel2;
  int idChannel3;
  int idChannel4;
  int idGroupCode1;
  int idGroupCode2;
  int idGroupCode3;
  int idGroupCode4;
  int idGroupCode5;
  int idGroupCode6;
  int idGroupCode7;
  int idGroupCode8;
  int idGroupCode9;
  int mtMultiSelect1;
  int mtMultiSelect2;
  int mtMultiSelect3;
  int mtMultiSelect4;
  int mtMultiSelect5;
  int mtMultiSelect6;
  int mtMultiSelect7;
  int mtMultiSelect8;
  int mtMultiSelect9;
  int idCustomerType;
  int idCustomerList;
  bool flExclude;
  int idRouteBusinessType;
  int idRouteChannelType;
  int idRoute;
  int idSalesOrg;
  int idSalesOffice;
  int idCity;
  
  Coverage({
    this.idCoverage,
    this.idCoverageType,
    this.idCoveragePk,
    this.idYLevel,
    this.idYHierarchy,
    this.idDistrict,
    this.idDealerType,
    this.idDealer,
    this.idMainCustomer,
    this.idCustomer,
    this.idChannel1,
    this.idChannel2,
    this.idChannel3,
    this.idChannel4,
    this.idGroupCode1,
    this.idGroupCode2,
    this.idGroupCode3,
    this.idGroupCode4,
    this.idGroupCode5,
    this.idGroupCode6,
    this.idGroupCode7,
    this.idGroupCode8,
    this.idGroupCode9,
    this.mtMultiSelect1,
    this.mtMultiSelect2,
    this.mtMultiSelect3,
    this.mtMultiSelect4,
    this.mtMultiSelect5,
    this.mtMultiSelect6,
    this.mtMultiSelect7,
    this.mtMultiSelect8,
    this.mtMultiSelect9,
    this.idCustomerType,
    this.idCustomerList,
    this.flExclude,
    this.idRouteBusinessType,
    this.idRouteChannelType,
    this.idRoute,
    this.idSalesOrg,
    this.idSalesOffice,
    this.idCity,
  });

  static Coverage fromMap(Map<String, dynamic> json) {
    return Coverage()
      ..idCoverage = json['idCoverage'] as int
      ..idCoverageType = json['idCoverageType'] as int
      ..idCoveragePk = json['idCoveragePk'] as int
      ..idYLevel = json['idYLevel'] as int
      ..idYHierarchy = json['idYHierarchy'] as int
      ..idDistrict = json['idDistrict'] as int
      ..idDealerType = json['idDealerType'] as int
      ..idDealer = json['idDealer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idChannel1 = json['idChannel1'] as int
      ..idChannel2 = json['idChannel2'] as int
      ..idChannel3 = json['idChannel3'] as int
      ..idChannel4 = json['idChannel4'] as int
      ..idGroupCode1 = json['idGroupCode1'] as int
      ..idGroupCode2 = json['idGroupCode2'] as int
      ..idGroupCode3 = json['idGroupCode3'] as int
      ..idGroupCode4 = json['idGroupCode4'] as int
      ..idGroupCode5 = json['idGroupCode5'] as int
      ..idGroupCode6 = json['idGroupCode6'] as int
      ..idGroupCode7 = json['idGroupCode7'] as int
      ..idGroupCode8 = json['idGroupCode8'] as int
      ..idGroupCode9 = json['idGroupCode9'] as int
      ..mtMultiSelect1 = json['mtMultiSelect1'] as int
      ..mtMultiSelect2 = json['mtMultiSelect2'] as int
      ..mtMultiSelect3 = json['mtMultiSelect3'] as int
      ..mtMultiSelect4 = json['mtMultiSelect4'] as int
      ..mtMultiSelect5 = json['mtMultiSelect5'] as int
      ..mtMultiSelect6 = json['mtMultiSelect6'] as int
      ..mtMultiSelect7 = json['mtMultiSelect7'] as int
      ..mtMultiSelect8 = json['mtMultiSelect8'] as int
      ..mtMultiSelect9 = json['mtMultiSelect9'] as int
      ..idCustomerType = json['idCustomerType'] as int
      ..idCustomerList = json['idCustomerList'] as int
      ..flExclude = json['flExclude'] == 1 ? true : false
      ..idRouteBusinessType = json['idRouteBusinessType'] as int
      ..idRouteChannelType = json['idRouteChannelType'] as int
      ..idRoute = json['idRoute'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
      ..idCity = json['idCity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCoverage': idCoverage,
        'idCoverageType': idCoverageType,
        'idCoveragePk': idCoveragePk,
        'idYLevel': idYLevel,
        'idYHierarchy': idYHierarchy,
        'idDistrict': idDistrict,
        'idDealerType': idDealerType,
        'idDealer': idDealer,
        'idMainCustomer': idMainCustomer,
        'idCustomer': idCustomer,
        'idChannel1': idChannel1,
        'idChannel2': idChannel2,
        'idChannel3': idChannel3,
        'idChannel4': idChannel4,
        'idGroupCode1': idGroupCode1,
        'idGroupCode2': idGroupCode2,
        'idGroupCode3': idGroupCode3,
        'idGroupCode4': idGroupCode4,
        'idGroupCode5': idGroupCode5,
        'idGroupCode6': idGroupCode6,
        'idGroupCode7': idGroupCode7,
        'idGroupCode8': idGroupCode8,
        'idGroupCode9': idGroupCode9,
        'mtMultiSelect1': mtMultiSelect1,
        'mtMultiSelect2': mtMultiSelect2,
        'mtMultiSelect3': mtMultiSelect3,
        'mtMultiSelect4': mtMultiSelect4,
        'mtMultiSelect5': mtMultiSelect5,
        'mtMultiSelect6': mtMultiSelect6,
        'mtMultiSelect7': mtMultiSelect7,
        'mtMultiSelect8': mtMultiSelect8,
        'mtMultiSelect9': mtMultiSelect9,
        'idCustomerType': idCustomerType,
        'idCustomerList': idCustomerList,
        'flExclude': flExclude,
        'idRouteBusinessType': idRouteBusinessType,
        'idRouteChannelType': idRouteChannelType,
        'idRoute': idRoute,
        'idSalesOrg': idSalesOrg,
        'idSalesOffice': idSalesOffice,
        'idCity': idCity,
      };
}