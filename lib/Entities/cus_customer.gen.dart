class CusCustomer {
  int idCustomer;
  String dsTitle;
  String dsSignboard;
  String dsOfficialTitle;
  String dsErpCode;
  int idDealer;
  int idChannel1;
  int idChannel2;
  int idChannel3;
  int idChannel4;
  int idAccountType;
  int idPriceListType;
  int idPriceListTypeDealer;
  int idWarehouse;
  int idGroupCode6;
  int idGroupCode7;
  int idGroupCode8;
  int idGroupCode9;
  int mtMultiSelect6;
  int mtMultiSelect7;
  int mtMultiSelect8;
  int mtMultiSelect9;
  int idHolding;
  int idChain;
  int idFormat;
  String dsTaxClassification;
  String dsParameter;
  int idCustomerAddress;
  int idCity;
  String dsAddress;
  String dsAddressNote;
  int mtLatitude;
  int mtLongitude;
  String dsExternalCode;
  String dsModelTsr;
  String dsDaysTsr;
  String dsCycleTsr;
  String dsTimeWorkFrom;
  String dsTimeWorkTo;
  String dsDesiredTimeDeliveryFrom;
  String dsDesiredTimeDeliveryTo;
  bool flSeasonal;
  int mtIseScore;
  bool flGpsApproved;
  bool flPosMandatory;
  bool flAudited;
  String dsLegacyNo;
  bool flRltdUsrsTaskApprStat;
  
  CusCustomer({
    this.idCustomer,
    this.dsTitle,
    this.dsSignboard,
    this.dsOfficialTitle,
    this.dsErpCode,
    this.idDealer,
    this.idChannel1,
    this.idChannel2,
    this.idChannel3,
    this.idChannel4,
    this.idAccountType,
    this.idPriceListType,
    this.idPriceListTypeDealer,
    this.idWarehouse,
    this.idGroupCode6,
    this.idGroupCode7,
    this.idGroupCode8,
    this.idGroupCode9,
    this.mtMultiSelect6,
    this.mtMultiSelect7,
    this.mtMultiSelect8,
    this.mtMultiSelect9,
    this.idHolding,
    this.idChain,
    this.idFormat,
    this.dsTaxClassification,
    this.dsParameter,
    this.idCustomerAddress,
    this.idCity,
    this.dsAddress,
    this.dsAddressNote,
    this.mtLatitude,
    this.mtLongitude,
    this.dsExternalCode,
    this.dsModelTsr,
    this.dsDaysTsr,
    this.dsCycleTsr,
    this.dsTimeWorkFrom,
    this.dsTimeWorkTo,
    this.dsDesiredTimeDeliveryFrom,
    this.dsDesiredTimeDeliveryTo,
    this.flSeasonal,
    this.mtIseScore,
    this.flGpsApproved,
    this.flPosMandatory,
    this.flAudited,
    this.dsLegacyNo,
    this.flRltdUsrsTaskApprStat,
  });

  static CusCustomer fromMap(Map<String, dynamic> json) {
    return CusCustomer()
      ..idCustomer = json['idCustomer'] as int
      ..dsTitle = json['dsTitle'] as String
      ..dsSignboard = json['dsSignboard'] as String
      ..dsOfficialTitle = json['dsOfficialTitle'] as String
      ..dsErpCode = json['dsErpCode'] as String
      ..idDealer = json['idDealer'] as int
      ..idChannel1 = json['idChannel1'] as int
      ..idChannel2 = json['idChannel2'] as int
      ..idChannel3 = json['idChannel3'] as int
      ..idChannel4 = json['idChannel4'] as int
      ..idAccountType = json['idAccountType'] as int
      ..idPriceListType = json['idPriceListType'] as int
      ..idPriceListTypeDealer = json['idPriceListTypeDealer'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idGroupCode6 = json['idGroupCode6'] as int
      ..idGroupCode7 = json['idGroupCode7'] as int
      ..idGroupCode8 = json['idGroupCode8'] as int
      ..idGroupCode9 = json['idGroupCode9'] as int
      ..mtMultiSelect6 = json['mtMultiSelect6'] as int
      ..mtMultiSelect7 = json['mtMultiSelect7'] as int
      ..mtMultiSelect8 = json['mtMultiSelect8'] as int
      ..mtMultiSelect9 = json['mtMultiSelect9'] as int
      ..idHolding = json['idHolding'] as int
      ..idChain = json['idChain'] as int
      ..idFormat = json['idFormat'] as int
      ..dsTaxClassification = json['dsTaxClassification'] as String
      ..dsParameter = json['dsParameter'] as String
      ..idCustomerAddress = json['idCustomerAddress'] as int
      ..idCity = json['idCity'] as int
      ..dsAddress = json['dsAddress'] as String
      ..dsAddressNote = json['dsAddressNote'] as String
      ..mtLatitude = json['mtLatitude'] as int
      ..mtLongitude = json['mtLongitude'] as int
      ..dsExternalCode = json['dsExternalCode'] as String
      ..dsModelTsr = json['dsModelTsr'] as String
      ..dsDaysTsr = json['dsDaysTsr'] as String
      ..dsCycleTsr = json['dsCycleTsr'] as String
      ..dsTimeWorkFrom = json['dsTimeWorkFrom'] as String
      ..dsTimeWorkTo = json['dsTimeWorkTo'] as String
      ..dsDesiredTimeDeliveryFrom = json['dsDesiredTimeDeliveryFrom'] as String
      ..dsDesiredTimeDeliveryTo = json['dsDesiredTimeDeliveryTo'] as String
      ..flSeasonal = json['flSeasonal'] == 1 ? true : false
      ..mtIseScore = json['mtIseScore'] as int
      ..flGpsApproved = json['flGpsApproved'] == 1 ? true : false
      ..flPosMandatory = json['flPosMandatory'] == 1 ? true : false
      ..flAudited = json['flAudited'] == 1 ? true : false
      ..dsLegacyNo = json['dsLegacyNo'] as String
      ..flRltdUsrsTaskApprStat = json['flRltdUsrsTaskApprStat'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomer': idCustomer,
        'dsTitle': dsTitle,
        'dsSignboard': dsSignboard,
        'dsOfficialTitle': dsOfficialTitle,
        'dsErpCode': dsErpCode,
        'idDealer': idDealer,
        'idChannel1': idChannel1,
        'idChannel2': idChannel2,
        'idChannel3': idChannel3,
        'idChannel4': idChannel4,
        'idAccountType': idAccountType,
        'idPriceListType': idPriceListType,
        'idPriceListTypeDealer': idPriceListTypeDealer,
        'idWarehouse': idWarehouse,
        'idGroupCode6': idGroupCode6,
        'idGroupCode7': idGroupCode7,
        'idGroupCode8': idGroupCode8,
        'idGroupCode9': idGroupCode9,
        'mtMultiSelect6': mtMultiSelect6,
        'mtMultiSelect7': mtMultiSelect7,
        'mtMultiSelect8': mtMultiSelect8,
        'mtMultiSelect9': mtMultiSelect9,
        'idHolding': idHolding,
        'idChain': idChain,
        'idFormat': idFormat,
        'dsTaxClassification': dsTaxClassification,
        'dsParameter': dsParameter,
        'idCustomerAddress': idCustomerAddress,
        'idCity': idCity,
        'dsAddress': dsAddress,
        'dsAddressNote': dsAddressNote,
        'mtLatitude': mtLatitude,
        'mtLongitude': mtLongitude,
        'dsExternalCode': dsExternalCode,
        'dsModelTsr': dsModelTsr,
        'dsDaysTsr': dsDaysTsr,
        'dsCycleTsr': dsCycleTsr,
        'dsTimeWorkFrom': dsTimeWorkFrom,
        'dsTimeWorkTo': dsTimeWorkTo,
        'dsDesiredTimeDeliveryFrom': dsDesiredTimeDeliveryFrom,
        'dsDesiredTimeDeliveryTo': dsDesiredTimeDeliveryTo,
        'flSeasonal': flSeasonal,
        'mtIseScore': mtIseScore,
        'flGpsApproved': flGpsApproved,
        'flPosMandatory': flPosMandatory,
        'flAudited': flAudited,
        'dsLegacyNo': dsLegacyNo,
        'flRltdUsrsTaskApprStat': flRltdUsrsTaskApprStat,
      };
}